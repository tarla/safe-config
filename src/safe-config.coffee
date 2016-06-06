fetch = (file) ->
  config = {}
  file = (require 'fs').readFileSync file, 'utf8'
  for keyValue in file.split '\n' when keyValue.match /^./
    tuple = keyValue.split '='
    config[tuple[0]] = if tuple[1][0] == '$' then process.env[tuple[1].replace('$','')] else tuple[1]
  return config
module.exports = (file) => fetch file
