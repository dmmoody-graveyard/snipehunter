class PostsChannel < ApplicationCable::Channel
  def posted
    stream_from 'posts'
  end

  def post(data)
    post.create!(title: data['title'], message: data['message'])
  end
end
