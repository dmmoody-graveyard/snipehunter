class PostsChannel < ApplicationCable::Channel
  def posted
    stream_from 'posts'
  end
end
