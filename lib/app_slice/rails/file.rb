module AppSlice
  module Rails
    class File < File
      # Try to open a file from the AppSlice, then RoR root, followed by the root on the machine
      def self.try(path, *args)
        open(detect(path), *args)
      end
      
      # Tries to detect a file within the AppSlice root, then Rails, then whatever file join does...
      def self.detect(path, *args)
        app_slice_path = join(AppSlice::Rails.root, path)
        rails_path = join(::Rails.root, path)
        
        if exists?(app_slice_path)
          app_slice_path
        elsif exists?(rails_path)
          rails_path
        else
          path
        end
      end
    end
  end
end