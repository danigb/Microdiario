
MD.Post = class Post
  constructor: (@attributes) ->
    @attributes.date_at = MD.Time.now() if !@attributes.date_at

