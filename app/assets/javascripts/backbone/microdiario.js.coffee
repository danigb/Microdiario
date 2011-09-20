#= require_self
#= require_tree ./lib
#= require_tree ./templates
#= require_tree ./models
#= require_tree ./views
#= require_tree ./routers

window.MD = {}

window.Microdiario =
  Models: {}
  Collections: {}
  Routers: {}
  Views: {}

$ ->
    window.router = new Microdiario.Routers.PostsRouter();
    Backbone.history.start();
