module AppSlice
  module Rails
    class Routes
      class << self
        def draw(map)
          eval(File.read(routes_configuration_file), map.send(:binding), routes_configuration_file)
        end

      protected
        def routes_configuration_file
          File.join(AppSlice::Rails.config_path, 'routes.rb')
        end
      end
    end
  end
end