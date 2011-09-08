

class MD.Alert
  template: JST["backbone/templates/alert"]

  initialize: ->
    $(".alert-message a.close").live 'click', ->
      $(this).parent('.alert-message').remove()
      false

  show : (level, body) ->
    $("#alerts").html(@template({level: level, body: body}));

$ ->
  MD.alerts = new MD.Alert();

