(require 'busted.runner')!
array = require "src.array.array"

describe "array.isArray", () ->
  fn = array.isArray

  it "test is True", () ->
    assert.is_true fn {1,2,3}
    assert.is_true fn {}

  it "test is False", () ->
    assert.is_false fn {1, 2, '4':5}
    assert.is_false fn {'4':5}
    assert.is_false fn 1
    assert.is_false fn 'a'
    assert.is_false fn false

describe "array.concat", () ->
  fn = array.concat
  a, b = {1, 2, 3}, {4, 5, 6}

  it "Concat A and B", () ->
    assert.are.same {1, 2, 3, 4, 5, 6} , fn a, b

  it "Concat {} and B", () ->
    assert.are.same b, fn {}, b

  it "Concat A and {}", () ->
    assert.are.same a, fn a, {}

  it "Get Exception", () ->
    f = -> fn(a, 1)
    assert.has_error f, "TypeError: Need Tables"
