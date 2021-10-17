_M = {}

_M.isArray = (arr) ->
  if type(arr) ~= 'table' return false

  for k, _ in pairs(arr)
    if type(k) ~= 'number' or k > #arr return false
  
  return true


_M.push = (arr, element) ->
  arr[#arr + 1] = element


_M.indexOf = (arr, element) ->
  for k, v in ipairs(arr)
    if (v == element) return k
  return -1


_M.includes = (arr, element) ->
  for _, v in ipairs(arr)
    if (v == element) return true
  return false

_M.concat = (a, b) ->
  if not (type(a) == 'table' and type(b) == 'table')
    error('TypeError: Need Tables')

  for _, v in ipairs(b)
    a[#a + 1] = v
  return a

return _M