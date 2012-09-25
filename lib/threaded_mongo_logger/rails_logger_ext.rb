Rails.class_eval do
  class << self
    def logger
      Thread.current[:logger]
    end

    def logger=(new_logger)
      Thread.current[:logger] = new_logger
    end
  end
end
