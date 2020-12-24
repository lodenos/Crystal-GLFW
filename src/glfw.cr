require "./lib/*"
require "./module/*"

################################################################################
# Test
################################################################################

GLFW::Context.init

window = GLFW::Window.new 1280, 720
window.show

while window.should_close == 0
  LibGLFW.pollEvents
end

GLFW::Context.terminate
