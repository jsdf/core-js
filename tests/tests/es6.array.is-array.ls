{module, test} = QUnit
module \ES6

test 'Array.isArray' (assert)!->
  {isArray} = Array
  assert.isFunction isArray
  assert.arity isArray, 1
  assert.name isArray, \isArray
  assert.looksNative isArray
  assert.ok not isArray {}
  assert.ok not isArray do -> &
  assert.ok isArray []