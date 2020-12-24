require "../lib/context"
require "./window"

class GLFW::Context
  def self.current_context : Window
    Window.new LibGLFW.getCurrentContext
  end

  # def self.error
  #   fun getError = glfwGetError(description : Pointer(Pointer(Int8))) : Int32
  # end
  
  # def self.error_callback
  #   fun setErrorCallback = glfwSetErrorCallback(callback : Errorfun) : Errorfun
  # end

  # def self.extension_supported
  #   fun extensionSupported = glfwExtensionSupported(extension : Pointer(Int8)) : Int32
  # end

  def self.init : Int32
    LibGLFW.init
  end

  def self.init_hint(hint : Int32, value : Int32) : Void
    LibGLFW.initHint hint, value
  end

  # def self.proc_address
  #   fun getProcAddress = glfwGetProcAddress(procname : Pointer(Int8)) : GLproc
  # end

  def self.swap_interval(interval : Int32) : Void
    LibGLFW.swap_interval interval
  end

  def self.terminate : Void
    LibGLFW.terminate
  end

  def self.version : NamedTuple
    major = 0_i32
    minor = 0_i32
    rev = 0_i32
    ptrMajor = pointerof(major)
    ptrMinor = pointerof(minor)
    ptrRev = pointerof(rev)
    LibGLFW.getVersion ptrMajor, ptrMinor, ptrRev
    { major: ptrMajor.value, minor: ptrMinor.value, rev: ptrRev.value }
  end

  def self.version_string : String
    String.new LibGLFW.getVersionString
  end
end
