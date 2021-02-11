class MessageChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'message'
    end

  def unsubscribed

  end

  def receive(data)
    data['user'] = current_user
     ActionCable.server.broadcast('message', data)
  end

end
