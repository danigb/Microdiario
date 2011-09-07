#= require_self
#= require_tree .

this.MD =
	loaded: true



$ ->
  post = new MD.Post(body: 'Hola')
  console.log post.attributes
  #console.log JST["microdiario/templates/post"]({ name: "Sam" })

