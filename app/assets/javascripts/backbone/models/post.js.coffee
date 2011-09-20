class Microdiario.Models.Post extends Backbone.Model
  paramRoot: 'post'

  defaults: ->
    {body: '', date_at: ''}


class Microdiario.Collections.PostsCollection extends Backbone.Collection
  model: Microdiario.Models.Post
  url: '/posts.json'

