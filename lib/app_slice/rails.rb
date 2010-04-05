require File.join(File.dirname(__FILE__), %w[.. app_slice])
require File.join(File.dirname(__FILE__), %w[rails initializer])
require File.join(File.dirname(__FILE__), %w[rails file])

module AppSlice
  module Rails
    class << self
      def init!
        ::Rails.public_path = public_path
        ::ActionController::Routing::Routes.add_configuration_file File.join(config_path, 'routes.rb')
        # Update frameworks with view_paths
        ::ActionController::Base.prepend_view_path(view_path)
        ::ActionMailer::Base.view_paths.unshift(view_path)
        @initialized = true
      end
      
      def root
        if AppSlice.exists?
          File.join(RAILS_ROOT, 'app_slices', AppSlice.app)
        else
          RAILS_ROOT
        end
      end
      
      def environment_path
        File.join(config_path, 'environments', "#{RAILS_ENV}.rb")
      end
      
      def public_path
        File.join(root, 'public')
      end
      
      def root_environment_path
        File.join(config_path, 'environment.rb')
      end
      
      def config_path
        File.join(root, 'config')
      end
      
      def view_path
        File.join(root, %w[app views])
      end
      
      def configure(configuration = ::Rails::Configuration.new)
        # Create our new configuration block here
        configuration.database_configuration_file = database_configuration_file
        return configuration
      end
      
      def initialized?
        @initialized
      end
      
    protected
      def routes_configuration_file
        File.join(config_path, 'routes.rb')
      end
      
      def database_configuration_file
        File.join(config_path, 'database.yml')
      end
    end
  end
end
