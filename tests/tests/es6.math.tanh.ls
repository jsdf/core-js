{module, test} = QUnit
module \ES6
# Returns an implementation-dependent approximation to the hyperbolic tangent of x.
test 'Math.tanh' (assert)->
  {tanh} = Math
  assert.isFunction tanh
  assert.name tanh, \tanh
  assert.arity tanh, 1
  assert.looksNative tanh
  assert.same tanh(NaN), NaN
  assert.same tanh(0), 0
  assert.same tanh(-0), -0
  assert.strictEqual tanh(Infinity), 1
  assert.strictEqual tanh(90), 1
  assert.epsilon tanh(10), 0.9999999958776927
  NATIVE and assert.strictEqual tanh(710), 1 #buggy v8 implementation