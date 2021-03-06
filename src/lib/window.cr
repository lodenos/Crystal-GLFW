@[Link("glfw3")]
lib LibGLFW
  FOCUSED = 0x00020001
  ICONIFIED = 0x00020002
  RESIZABLE = 0x00020003
  VISIBLE = 0x00020004
  DECORATED = 0x00020005
  AUTO_ICONIFY = 0x00020006
  FLOATING = 0x00020007
  MAXIMIZED = 0x00020008
  CENTER_CURSOR = 0x00020009
  TRANSPARENT_FRAMEBUFFER = 0x0002000A
  HOVERED = 0x0002000B
  FOCUS_ON_SHOW = 0x0002000C
  RED_BITS = 0x00021001
  GREEN_BITS = 0x00021002
  BLUE_BITS = 0x00021003
  ALPHA_BITS = 0x00021004
  DEPTH_BITS = 0x00021005
  STENCIL_BITS = 0x00021006
  ACCUM_RED_BITS = 0x00021007
  ACCUM_GREEN_BITS = 0x00021008
  ACCUM_BLUE_BITS = 0x00021009
  ACCUM_ALPHA_BITS = 0x0002100A
  AUX_BUFFERS = 0x0002100B
  STEREO = 0x0002100C
  SAMPLES = 0x0002100D
  SRGB_CAPABLE = 0x0002100E
  REFRESH_RATE = 0x0002100F
  DOUBLEBUFFER = 0x00021010
  CLIENT_API = 0x00022001
  CONTEXT_VERSION_MAJOR = 0x00022002
  CONTEXT_VERSION_MINOR = 0x00022003
  CONTEXT_REVISION = 0x00022004
  CONTEXT_ROBUSTNESS = 0x00022005
  OPENGL_FORWARD_COMPAT = 0x00022006
  OPENGL_DEBUG_CONTEXT = 0x00022007
  OPENGL_PROFILE = 0x00022008
  CONTEXT_RELEASE_BEHAVIOR = 0x00022009
  CONTEXT_NO_ERROR = 0x0002200A
  CONTEXT_CREATION_API = 0x0002200B
  SCALE_TO_MONITOR = 0x0002200C
  COCOA_RETINA_FRAMEBUFFER = 0x00023001
  COCOA_FRAME_NAME = 0x00023002
  COCOA_GRAPHICS_SWITCHING = 0x00023003
  X11_CLASS_NAME = 0x00024001
  X11_INSTANCE_NAME = 0x00024002
  
  type Image = Void
  type Window = Void

  alias Windowposfun = Pointer(Window), Int32, Int32 -> Void 
  alias Windowsizefun = Pointer(Window), Int32, Int32 -> Void
  alias Windowclosefun = Pointer(Window) -> Void
  alias Windowrefreshfun = Pointer(Window) -> Void
  alias Windowfocusfun = Pointer(Window), Int32 -> Void
  alias Windowiconifyfun = Pointer(Window), Int32 -> Void
  alias Windowmaximizefun = Pointer(Window), Int32 -> Void
  alias Framebuffersizefun = Pointer(Window), Int32, Int32 -> Void
  alias Windowcontentscalefun = Pointer(Window), Float32, Float32 -> Void

  fun defaultWindowHints = glfwDefaultWindowHints : Void
  fun windowHint = glfwWindowHint(hint : Int32, value : Int32) : Void
  fun windowHintString = glfwWindowHintString(hint : Int32, value : Pointer(Int8)) : Void
  fun createWindow = glfwCreateWindow(width : Int32, height : Int32, title : Pointer(UInt8), monitor : Pointer(Monitor), share : Pointer(Window)) : Pointer(Window)
  fun destroyWindow = glfwDestroyWindow(window : Pointer(Window)) : Void
  fun windowShouldClose = glfwWindowShouldClose(window : Pointer(Window)) : Int32
  fun setWindowShouldClose = glfwSetWindowShouldClose(window : Pointer(Window), value : Int32) : Void
  fun setWindowTitle = glfwSetWindowTitle(window : Pointer(Window), title : Pointer(Int8)) : Void
  # INFO : NOT Supported
  fun setWindowIcon = glfwSetWindowIcon(window : Pointer(Window), count : Int32, images : Pointer(Image)) : Void
  fun getWindowPos = glfwGetWindowPos(window : Pointer(Window), xpos : Pointer(Int32), ypos : Pointer(Int32)) : Void
  fun setWindowPos = glfwSetWindowPos(window : Pointer(Window), xpos : Int32, ypos : Int32) : Void



  fun getWindowSize = glfwGetWindowSize(window : Pointer(Window), width : Pointer(Int32), height : Pointer(Int32)) : Void
  fun setWindowSizeLimits = glfwSetWindowSizeLimits(window : Pointer(Window), minwidth : Int32, minheight : Int32, maxwidth : Int32, maxheight : Int32) : Void
  fun setWindowAspectRatio = glfwSetWindowAspectRatio(window : Pointer(Window), numer : Int32, denom : Int32) : Void
  fun setWindowSize = glfwSetWindowSize(window : Pointer(Window), width : Int32, height : Int32) : Void
  fun getFramebufferSize = glfwGetFramebufferSize(window : Pointer(Window), width : Pointer(Int32), height : Pointer(Int32)) : Void
  fun getWindowFrameSize = glfwGetWindowFrameSize(window : Pointer(Window), left : Pointer(Int32), top : Pointer(Int32), right : Pointer(Int32), bottom : Pointer(Int32)) : Void
  fun getWindowContentScale = glfwGetWindowContentScale(window : Pointer(Window), xscale : Pointer(Float32), yscale : Pointer(Float32)) : Void
  fun getWindowOpacity = glfwGetWindowOpacity(window : Pointer(Window)) : Float32
  fun setWindowOpacity = glfwSetWindowOpacity(window : Pointer(Window), opacity : Float32) : Void
  fun iconifyWindow = glfwIconifyWindow(window : Pointer(Window)) : Void
  fun restoreWindow = glfwRestoreWindow(window : Pointer(Window)) : Void
  # INFO : Supported
  fun makeContextCurrent = glfwMakeContextCurrent(window : Pointer(Window)) : Void
  fun maximizeWindow = glfwMaximizeWindow(window : Pointer(Window)) : Void
  # INFO : Supported
  fun showWindow = glfwShowWindow(window : Pointer(Window)) : Void
  fun hideWindow = glfwHideWindow(window : Pointer(Window)) : Void
  fun focusWindow = glfwFocusWindow(window : Pointer(Window)) : Void
  fun requestWindowAttention = glfwRequestWindowAttention(window : Pointer(Window)) : Void
  fun getWindowMonitor = glfwGetWindowMonitor(window : Pointer(Window)) : Pointer(Monitor)
  fun setWindowMonitor = glfwSetWindowMonitor(window : Pointer(Window), monitor : Pointer(Monitor), xpos : Int32, ypos : Int32, width : Int32, height : Int32, refreshRate : Int32) : Void
  fun getWindowAttrib = glfwGetWindowAttrib(window : Pointer(Window), attrib : Int32) : Int32
  fun setWindowAttrib = glfwSetWindowAttrib(window : Pointer(Window), attrib : Int32, value : Int32) : Void
  fun setWindowUserPointer = glfwSetWindowUserPointer(window : Pointer(Window), pointer : Pointer(Void)) : Void
  fun getWindowUserPointer = glfwGetWindowUserPointer(window : Pointer(Window)) : Pointer(Void)
  fun setWindowPosCallback = glfwSetWindowPosCallback(window : Pointer(Window), callback : Windowposfun) : Windowposfun
  fun setWindowSizeCallback = glfwSetWindowSizeCallback(window : Pointer(Window), callback : Windowsizefun) : Windowsizefun
  fun setWindowCloseCallback = glfwSetWindowCloseCallback(window : Pointer(Window), callback : Windowclosefun) : Windowclosefun
  fun setWindowRefreshCallback = glfwSetWindowRefreshCallback(window : Pointer(Window), callback : Windowrefreshfun) : Windowrefreshfun
  fun setWindowFocusCallback = glfwSetWindowFocusCallback(window : Pointer(Window), callback : Windowfocusfun) : Windowfocusfun
  fun setWindowIconifyCallback = glfwSetWindowIconifyCallback(window : Pointer(Window), callback : Windowiconifyfun) : Windowiconifyfun
  fun setWindowMaximizeCallback = glfwSetWindowMaximizeCallback(window : Pointer(Window), callback : Windowmaximizefun) : Windowmaximizefun
  fun setFramebufferSizeCallback = glfwSetFramebufferSizeCallback(window : Pointer(Window), callback : Framebuffersizefun) : Framebuffersizefun
  fun setWindowContentScaleCallback = glfwSetWindowContentScaleCallback(window : Pointer(Window), callback : Windowcontentscalefun) : Windowcontentscalefun
  fun pollEvents = glfwPollEvents : Void
  fun waitEvents = glfwWaitEvents : Void
  fun waitEventsTimeout = glfwWaitEventsTimeout(timeout : Float64) : Void
  fun postEmptyEvent = glfwPostEmptyEvent : Void
  fun swapBuffers = glfwSwapBuffers(window : Pointer(Window)) : Void
end
