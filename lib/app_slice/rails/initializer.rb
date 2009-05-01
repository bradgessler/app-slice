module AppSlice
  module Rails
    module Initializer
      def self.included(base)
        # Just skip this whole thing if a app package is not specified and
        # load rails as you normally would without app packages
        base.send(:extend, ClassMethods)
        base.send(:include, InstanceMethods)

        base.instance_eval do # Class methods
          alias :run_without_app_package :run
          alias :run :run_with_app_package
        end

        base.class_eval do # Instance methods
          alias :load_environment_without_app_package :load_environment
          alias :load_environment :load_environment_with_app_package
        end
      end
      
      module InstanceMethods
        def load_environment_with_app_package(*args)
          load_environment_without_app_package(*args)
          # This is copy, pasted, and modified to load app package configs from
          # http://github.com/rails/rails/blob/39ff550fa88da9a22d8c21ca872f5e4d0d83f8d4/railties/lib/initializer.rb#L365-369
          config = self.send(:configuration) # Gotta tee up config for the bindings below in the evals
          silence_warnings do
            # If the env files don't exist, who cares? Just use the base configs
            eval(IO.read(AppSlice::Rails.root_environment_path), binding, AppSlice::Rails.root_environment_path) if File.exists? AppSlice::Rails.root_environment_path
            eval(IO.read(AppSlice::Rails.environment_path), binding, AppSlice::Rails.environment_path) if File.exists? AppSlice::Rails.environment_path
          end
        end
      end

      module ClassMethods
        # TODO [BG Mar 09] Watch Rails::Initializer on github to monitor changes and pontential breakage
        # of function arity in future versions of rails.
        def run_with_app_package(command = :process, configuration=::Rails::Configuration.new, &block)
          run_without_app_package(command, AppSlice::Rails.configure(configuration), &block)
          AppSlice::Rails.init!
        end
      end
    end
  end
end

Rails::Initializer.send(:include, AppSlice::Rails::Initializer) if AppSlice.exists?
