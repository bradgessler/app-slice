APP_SLICE = ENV['APP_SLICE'] unless defined?(APP_SLICE)

module AppSlice
  class << self
    attr_accessor :app
    
    def exists?
      !@app.nil? and @app != ''
    end
    
    # Binds the AppSlice to the environmental variable APP_SLICE
    def init!
      @app = APP_SLICE || ''
    end
  end
end

AppSlice.init!
