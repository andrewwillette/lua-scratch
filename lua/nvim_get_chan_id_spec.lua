local a = require 'plenary.async'
describe("some assertions", function()
  it("tests positive assertions", function()
    assert.is_true(true) -- Lua keyword chained with _
    assert.True(true) -- Lua keyword using a capital
    assert.are.equal(1, 1)
    assert.has.errors(function() error("this should fail") end)
  end)

  it("tests negative assertions", function()
    assert.is_not_true(false)
    assert.are_not.equals(1, "1")
    assert.has_no.errors(function() end)
  end)
end)
