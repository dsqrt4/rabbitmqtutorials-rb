# frozen_string_literal: true

module RabbitMqTutorials
  module Producer
    def produce
      puts "Hello, World!"
    end

    module_function :produce
  end
end