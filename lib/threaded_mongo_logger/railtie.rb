module ThreadedMongoLogger
  class Railtie < Rails::Railtie
    initializer "threaded_mongo_logger.insert_middleware" do |app|
      app.config.middleware.insert_before Rails::Rack::Logger, ThreadedMongoLogger::Rack
    end
  end
end
