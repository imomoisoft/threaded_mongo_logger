module ThreadedMongoLogger
  class Rack
    def initialize(app)
      @app = app
    end

    def call(env)
      logger = ThreadedMongoLogger::Logger.new
      Rails.logger = logger
      result = @app.call(env)
      logger.flush!
      result
    end
  end
end
