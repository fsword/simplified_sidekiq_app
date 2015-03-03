require 'sidekiq'

class AsyncWorker
  include Sidekiq::Worker
  def perform id
    sleep 5
    logger.info "I got #{id}"
  end
end
