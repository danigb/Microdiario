class Microdiario.Routers.PostsRouter extends Backbone.Router
  initialize: (options) ->
    @posts = new Microdiario.Collections.PostsCollection()
    @posts.fetch()

  routes:
    "/diario": "index"
    "/:id/edit": "edit"
    "/:id": "show"
    ".*": "root"

  root: ->
    window.location.hash = "/diario"

  newPost: ->

  index: ->
    @viewNew = new Microdiario.Views.Posts.NewView(collection: @posts)
    $("#newPost").html(@viewNew.render().el)
    @viewIndex = new Microdiario.Views.Posts.IndexView(posts: @posts)
    $("#posts").html(@viewIndex.render().el)

  show: (id) ->
    post = @posts.get(id)

    @view = new Microdiario.Views.Posts.ShowView(model: post)
    $("#posts").html(@view.render().el)

  edit: (id) ->
    post = @posts.get(id)

    @view = new Microdiario.Views.Posts.EditView(model: post)
    $("#posts").html(@view.render().el)

