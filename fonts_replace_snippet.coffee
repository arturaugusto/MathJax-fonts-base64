css = ''
# Get all style tag content
Array::map.call document.getElementsByTagName('style'), (s) ->
  data = s.firstChild.data
  css += '<style type="text/css">' + data + '</style>'

# Split string containing styles
# reject lines that contain fonts an than join again
css = _.reject(css.split("\n"), (r) ->
  return /@font-face/.test(r)
).join("\n")
