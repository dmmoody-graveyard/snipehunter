App.post = App.cable.posts.create "PostsChannel",
  posted: ->
    $('.posts').append data['post']
