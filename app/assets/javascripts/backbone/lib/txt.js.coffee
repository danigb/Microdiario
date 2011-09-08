
HTML_ENTITIES =
  '&': '&amp;',
  '>': '&gt;',
  '<': '&lt;',
  '"': '&quot;',
  "'": '&#39;'

MD.Txt =
  htmlEscape: (text) ->
    text && text.replace /[&"'><]/g, (character) ->
      HTML_ENTITIES[character]

  linkify : (text) ->
    urlPattern = /\b(?:https?|ftp):\/\/[a-z0-9-+&@#\/%?=~_|!:,.;]*[a-z0-9-+&@#\/%=~_|]/gim;
    pseudoUrlPattern = /(^|[^\/])(www\.[\S]+(\b|$))/gim;
    emailAddressPattern = /\w+@[a-zA-Z_]+?(?:\.[a-zA-Z]{2,6})+/gim;

    text.replace(urlPattern, '<a href="$&">$&</a>').replace(pseudoUrlPattern, '$1<a href="http://$2">$2</a>').replace(emailAddressPattern, '<a href="mailto:$&">$&</a>');

  body: (text) ->
    text = MD.Txt.linkify(MD.Txt.htmlEscape(text))

