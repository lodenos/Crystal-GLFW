lib LibGLFW
  # Macro Definition Documentation
  VERSION_MAJOR = 3
  VERSION_MINOR = 3
  VERSION_REVISION = 2
  TRUE = 1
  FALSE = 0
  JOYSTICK_HAT_BUTTONS = 0x00050001
  COCOA_CHDIR_RESOURCES = 0x00051001
  COCOA_MENUBAR = 0x00051002
  # Error codes
  NO_ERROR = 0
  NOT_INITIALIZED = 0x00010001
  NO_CURRENT_CONTEXT = 0x00010002
  INVALID_ENUM = 0x00010003
  INVALID_VALUE = 0x00010004
  OUT_OF_MEMORY = 0x00010005
  API_UNAVAILABLE = 0x00010006
  VERSION_UNAVAILABLE = 0x00010007
  PLATFORM_ERROR = 0x00010008
  FORMAT_UNAVAILABLE = 0x00010009
  NO_WINDOW_CONTEXT = 0x0001000A

  type GLFWglproc = Void -> Void
  type GLFWerrorfun = Int32, Pointer(Int32) -> Void

  fun makeContextCurrent = glfwMakeContextCurrent(window : Pointer(GLFWwindow)) : Void
  fun getCurrentContext = glfwGetCurrentContext(Void) : Pointer(GLFWwindow)
  fun swapInterval = glfwSwapInterval(interval : Int32) : Void
  fun extensionSupported = glfwExtensionSupported(extension : Pointer(Int8)) : Int32
  fun getProcAddress = glfwGetProcAddress(procname : Pointer(Int8)) : GLFWglproc
  fun init = glfwInit(Void) : Int32
  fun terminate = glfwTerminate(Void) : Void
  fun initHint = glfwInitHint(hint : Int32, value : Int32) : Void
  fun getVersion = glfwGetVersion(major : Pointer(Int32), minor : Pointer(Int32), rev : Pointer(Int32)) : Void
  fun getVersionString = glfwGetVersionString(Void) : Pointer(Int8)
  fun getError = glfwGetError(description : Pointer(Pointer(Int8))) : Int32
  fun setErrorCallback = glfwSetErrorCallback(callback : GLFWerrorfun) : GLFWerrorfun
end