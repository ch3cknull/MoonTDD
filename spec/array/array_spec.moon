runner = require 'busted.runner'
runner!

array = require "src.array.array"

describe "array.isArray", () ->
  fn = array.isArray

  it "test is True", () ->
    arr = {1,2,3}
    assert.is_true fn arr