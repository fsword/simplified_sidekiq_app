require 'sidekiq'

class AsyncWorker
  include Sidekiq::Worker
end


30.times.map do |i|
  Thread.new do
    AsyncWorker.perform_async i
  end
end.map(&:join)
