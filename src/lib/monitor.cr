@[Link("glfw3")]
lib LibGLFW
  struct Gammaramp
    red : Pointer(UInt16)
    green : Pointer(UInt16)
    blue : Pointer(UInt16)
    size : Pointer(UInt32)
  end

  struct Vidmode
    width : Int32
    height : Int32
    redBits : Int32
    greenBits : Int32
    blueBits : Int32
    refreshRate : Int32
  end

  alias Monitorfun = Pointer(Monitor), Int32 -> Void

  type Monitor = Void

  fun getMonitors = glfwGetMonitors(count : Pointer(Int32)) : Pointer(Pointer(Monitor))
  fun getPrimaryMonitor = glfwGetPrimaryMonitor : Pointer(Monitor)
  fun getMonitorPos = glfwGetMonitorPos(monitor : Pointer(Monitor), xpos : Pointer(Int32), ypos : Pointer(Int32)) : Void
  fun getMonitorWorkarea = glfwGetMonitorWorkarea(monitor : Pointer(Monitor), xpos : Pointer(Int32), ypos : Pointer(Int32), width : Pointer(Int32), height : Pointer(Int32)) : Void
  fun getMonitorPhysicalSize = glfwGetMonitorPhysicalSize(monitor : Pointer(Monitor), widthMM : Pointer(Int32), heightMM : Pointer(Int32)) : Void
  fun getMonitorContentScale = glfwGetMonitorContentScale(monitor : Pointer(Monitor), xscale : Pointer(Float32), yscale : Pointer(Float32)) : Void
  fun getMonitorName = glfwGetMonitorName(monitor : Pointer(Monitor)) : Pointer(Int8)
  fun setMonitorUserPointer = glfwSetMonitorUserPointer(monitor : Pointer(Monitor), pointer : Pointer(Void)) : Void
  fun getMonitorUserPointer = glfwGetMonitorUserPointer(monitor : Pointer(Monitor)) : Pointer(Void)
  fun setMonitorCallback = glfwSetMonitorCallback(callback : Monitorfun) : Monitorfun
  fun getVideoModes = glfwGetVideoModes(monitor : Pointer(Monitor), count : Pointer(Int32)) : Pointer(Vidmode)
  fun getVideoMode = glfwGetVideoMode(monitor : Pointer(Monitor)) : Pointer(Vidmode)
  fun setGamma = glfwSetGamma(monitor : Pointer(Monitor), gamma : Float32) : Void
  fun getGammaRamp = glfwGetGammaRamp(monitor : Pointer(Monitor)) : Pointer(Gammaramp)
  fun setGammaRamp = glfwSetGammaRamp(monitor : Pointer(Monitor), ramp : Pointer(Gammaramp)) : Void
end