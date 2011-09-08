Microdiario.Views.Posts ||= {}

class Microdiario.Views.Posts.PostView extends Backbone.View
  template: JST["backbone/templates/posts/post"]

  events:
    "click .destroy" : "destroy"

  tagName: "blockquote"

  destroy: () ->
    if confirm('¡¿Seguro?!')
      @options.model.destroy()
      this.remove()
    return false

  render: ->
    params = @options.model.toJSON()
    params.body = MD.Txt.body(@options.model.get 'body')
    params.date_at = "Por la mañana #{@options.model.get('date_at')}"

    $(this.el).html this.template(params)
    return this

