require File.join(File.dirname(__FILE__), %w[.. domain_slice])
require File.join(File.dirname(__FILE__), %w[rails initializer])

module DomainSlice
  module Rails
    class << self
      def init!
        ::ActionController::Base.view_paths.unshift File.join(root, %w[app views])
        ::Rails.public_path = File.join(root, 'public')
        ::ActionController::Routing::Routes.add_configuration_file File.join(config_path, 'routes.rb')
      end
      
      def root
        File.join(RAILS_ROOT, 'domains', DomainSlice.domain)
      end
      
      def environment_path
        File.join(config_path, 'environments', "#{Rails.env}.rb")
      end
      
      def root_environment_path
        File.join(config_path, 'environment.rb')
      end
      
      def config_path
        File.join(root, 'config')
      end
      
      def configure(configuration = ::Rails::Configuration.new)
        # Create our new configuration block here
        configuration.database_configuration_file = database_configuration_file
        return configuration
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