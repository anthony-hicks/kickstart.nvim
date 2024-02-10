-- TODO: Use template provider to generate tasks from cmake --list-targets or something?
-- TODO: Use condition.callback to only enable task when
-- inside a root that contains a CMakeLists.txt?
-- TODO: Consider floating notification
-- TODO: Consider toggleterm?
-- TODO: -DCMAKE_BUILD_TYPE option (enum?)
-- TODO: Only open output on error. Where should output go?
-- Quickfix?
return {
  name = "cmake configure",
  builder = function()
    return {
      cmd = { "cmake" },
      args = { "-S", ".", "-B", "build", "-DCMAKE_EXPORT_COMPILE_COMMANDS=1" },
      components = {
        "default",
      },
    }
  end
}
