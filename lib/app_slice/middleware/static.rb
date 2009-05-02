module AppSlice
  module Middleware
    class Static
      FILE_METHODS = %w(GET HEAD).freeze unless defined?(FILE_METHODS)
      
      def initialize(app)
        @app = app
        @file_servers = [
          ::Rack::File.new(app_slice_public_path),
          ::Rack::File.new(rails_public_path)
        ]
      end
      
      def call(env)
        path        = env['PATH_INFO'].chomp('/')
        method      = env['REQUEST_METHOD']
        
        if FILE_METHODS.include?(method)
          if rack_file = file_exist?(path)
            return rack_file.call(env)
          else
            cached_path = directory_exist?(path) ? "#{path}/index" : path
            cached_path += ::ActionController::Base.page_cache_extension
            
            if rack_file = file_exist?(cached_path)
              env['PATH_INFO'] = cached_path
              return rack_file.call(env)
            end
          end
        end
        
        @app.call(env)
      end
      
      private
        def rails_public_path
          File.join(RAILS_ROOT, 'public')
        end
        
        def app_slice_public_path
          File.join(RAILS_ROOT, 'app_slices', AppSlice.app, 'public')
        end
        
        # TODO [BG Mar 09] This might have to be optimized instead of a stupid check
        # one, check the other arrangement
        def file_exist?(path)
          @file_servers.find do |file_server|
            full_path = File.join(file_server.root, ::Rack::Utils.unescape(path))
            File.file?(full_path) && File.readable?(full_path)
          end
        end
        
        def directory_exist?(path)
          @file_servers.find do |file_server|
            full_path = File.join(file_server.root, ::Rack::Utils.unescape(path))
            File.directory?(full_path) && File.readable?(full_path)
          end
        end
    end
  end
end
