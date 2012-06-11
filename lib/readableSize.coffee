module.exports = (size) ->
  units = ["B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"]
  i = 0
  while size >= 1024
    size /= 1024
    ++i
  return "#{size.toFixed(2)} #{units[i]}"