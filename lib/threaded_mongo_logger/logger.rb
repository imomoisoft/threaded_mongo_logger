module ThreadedMongoLogger
  class Logger
    def initialize(severity = ::Logger::DEBUG)
      @level = severity
      @messages = []
    end

    def add(severity, message = nil, progname = nil, &block)
      return true if severity < @level
      @messages << message.to_s
    end

    def info(message = nil, progname = nil, &block)
      add(::Logger::INFO, message, progname, &block)
    end

    def flush!
      File.open(Rails.root.join("log/#{Thread.current[:logger].object_id}.log"), 'w') {|f| f.write(@messages.join("\n")) }
    end
  end
end
