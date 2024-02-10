return {
  name = "cmake clean",
  builder = function()
    return {
      cmd = {"rm"},
      args = {"-rf", "build"},
      components = {
        "default"
      }
    }
  end
}
