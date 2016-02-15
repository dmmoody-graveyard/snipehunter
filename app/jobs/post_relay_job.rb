class PostRelayJob < ApplicationJob
  def perform(posts)
    ActionCable.server.broadcast 'posts',
      posts: posts
  end
end
