-- TODO: Add a ctest task
-- TODO: Keybindings
--  "<leader>bc" -> clean
-- TODO: Compiler warnings?
--  If we output to quickfix, then quickfix takes care
--  of parsing
return {
  name = "cmake build",
  builder = function()
    return {
      cmd = {"cmake"},
      args = {"--build", "build", "-j"},
      components = {
        "default",
        {
          "on_output_quickfix",
          open_on_match = true,
        }
      },
    }
  end
}
