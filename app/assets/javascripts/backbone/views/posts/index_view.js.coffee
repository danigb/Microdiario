Microdiario.Views.Posts ||= {}

class Microdiario.Views.Posts.IndexView extends Backbone.View
  template: JST["backbone/templates/posts/index"]

  initialize: () ->
    _.bindAll(this, 'addOne', 'addAll', 'render');

    @options.posts.bind('reset', this.addAll);
    @options.posts.bind('add', this.prependOne)

  addAll: () ->
    @options.posts.each(this.addOne)

  addOne: (post) ->
    view = new Microdiario.Views.Posts.PostView({model : post})
    this.$("#postsList").append(view.render().el)

  prependOne: (post) =>
    view = new Microdiario.Views.Posts.PostView({model : post})
    this.$("#postsList").prepend(view.render().el)

  render: ->
    $(this.el).html(this.template(posts: this.options.posts.toJSON() ))
    @addAll()

    return this

