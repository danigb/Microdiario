class Microdiario.Models.Post extends Backbone.Model
  paramRoot: 'post'

  defaults:
    body: null
    date_at: null
  
class Microdiario.Collections.PostsCollection extends Backbone.Collection
  model: Microdiario.Models.Post
  url: '/posts'