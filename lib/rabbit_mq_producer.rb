# frozen_string_literal: true

require 'json'
require_relative 'rabbit_mq_producer/rabbit_mq_connection'

class RabbitMQProducer
  attr_reader :queue_name, :connection

  # durable - сохраняет очереди при перезагрузки rabbitmq
  def initialize(queue_name)
    @queue_name = queue_name
    @connection = RabbitMQConnection.connection
  end

  def publish(payload)
    channel = connection.start.create_channel
    queue = channel.queue(queue_name, durable: true)
    channel.default_exchange.publish(payload.to_json, routing_key: queue.name, persistent: true)
    connection.close
  end
end
