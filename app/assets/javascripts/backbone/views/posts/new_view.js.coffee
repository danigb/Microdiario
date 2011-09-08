Microdiario.Views.Posts ||= {}

class Microdiario.Views.Posts.NewView extends Backbone.View
  template: JST["backbone/templates/posts/new"]

  events:
    "submit #new-post": "save"
    "focus textarea": "stamp"

  constructor: (options) ->
    super(options)
    @options.model = new @options.collection.model()

    @options.model.bind "change:errors", () =>
      this.render()

  stamp: ->
    @options.model.set {date_at: MD.Time.stamp()}

  save: (e) ->
    e.preventDefault()
    e.stopPropagation()
    this.$(':submit').attr 'disabled', true

    @options.model.unset("errors")

    @options.collection.create(@options.model.toJSON(),
      success: (model) =>
        @options.model = new @options.collection.model()
        @render()

      error: (model, jqXHR) =>
        @options.model.set({errors: $.parseJSON(jqXHR.responseText)})
        MD.alerts.show('error', 'No se pudo...')
    )

  render: ->
    $(this.el).html(this.template(@options.model.toJSON() ))
    this.$("form").backboneLink(@options.model)
    return this

