class MessageChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'message'
    end

  def unsubscribed
    
  end
end
