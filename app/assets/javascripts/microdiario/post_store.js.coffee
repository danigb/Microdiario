
MD.PostStore = class PostStore
  reset : (posts) ->
    @posts = posts
    @posts.each(this.addOne)
  addOne : (post) ->
    $('#posts').append(post.render)

