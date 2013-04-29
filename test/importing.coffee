# Importing
# ---------

unless window? or testingBrowser?
  test "coffeescript modules can be imported and executed", ->

    magicKey = __filename
    magicValue = 0xFFFF

    if global[magicKey]?
      if exports?
        local = magicValue
        exports.method = -> local
    else
      global[magicKey] = {}
      delete global[magicKey]
