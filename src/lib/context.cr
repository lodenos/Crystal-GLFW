@[Link("glfw3")]
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

  alias GLproc = Void -> Void
  alias Errorfun = Int32, Pointer(Int32) -> Void

  fun get_current_context = glfwGetCurrentContext : Pointer(Window)
  fun swap_interval = glfwSwapInterval(interval : Int32) : Void
  fun extension_supported = glfwExtensionSupported(extension : Pointer(Int8)) : Int32
  fun get_proc_address = glfwGetProcAddress(procname : Pointer(Int8)) : GLproc
  fun init = glfwInit : Int32
  fun terminate = glfwTerminate : Void
  fun init_hint = glfwInitHint(hint : Int32, value : Int32) : Void
  fun get_version = glfwGetVersion(major : Pointer(Int32), minor : Pointer(Int32), rev : Pointer(Int32)) : Void
  fun get_version_string = glfwGetVersionString : Pointer(Int8)
  fun get_error = glfwGetError(description : Pointer(Pointer(Int8))) : Int32
  fun set_error_callback = glfwSetErrorCallback(callback : Errorfun) : Errorfun
end
