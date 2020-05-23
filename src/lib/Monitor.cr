lib LibGLFW
  # typedef struct GLFWmonitor GLFWmonitor
  # typedef void(* GLFWmonitorfun)(GLFWmonitor *, int)
  # typedef struct GLFWvidmode GLFWvidmode
  # typedef struct GLFWgammaramp GLFWgammaramp
  fun getMonitors = glfwGetMonitors(count : Pointer(Int32)) : Pointer(Pointer(GLFWmonitor))
  fun getPrimaryMonitor = glfwGetPrimaryMonitor(Void) : Pointer(GLFWmonitor)
  fun getMonitorPos = glfwGetMonitorPos(monitor : Pointer(GLFWmonitor), xpos : Pointer(Int32), ypos : Pointer(Int32)) : Void
  fun getMonitorWorkarea = glfwGetMonitorWorkarea(monitor : Pointer(GLFWmonitor), xpos : Pointer(Int32), ypos : Pointer(Int32), width : Pointer(Int32), height : Pointer(Int32)) : Void
  fun getMonitorPhysicalSize = glfwGetMonitorPhysicalSize(monitor : Pointer(GLFWmonitor), widthMM : Pointer(Int32), heightMM : Pointer(Int32)) : Void
  fun getMonitorContentScale = glfwGetMonitorContentScale(monitor : Pointer(GLFWmonitor), xscale : Pointer(Float32), yscale : Pointer(Float32)) : Void
  fun getMonitorName = glfwGetMonitorName(monitor : Pointer(GLFWmonitor)) : Pointer(Int8)
  fun setMonitorUserPointer = glfwSetMonitorUserPointer(monitor : Pointer(GLFWmonitor), pointer : Pointer(Void)) : Void
  fun getMonitorUserPointer = glfwGetMonitorUserPointer(monitor : Pointer(GLFWmonitor)) : Pointer(Void)
  fun setMonitorCallback = glfwSetMonitorCallback(callback : GLFWmonitorfun) : GLFWmonitorfun
  fun getVideoModes = glfwGetVideoModes(monitor : Pointer(GLFWmonitor), count : Pointer(Int32)) : Pointer(GLFWvidmode)
  fun getVideoMode = glfwGetVideoMode(monitor : Pointer(GLFWmonitor)) : Pointer(GLFWvidmode)
  fun setGamma = glfwSetGamma(monitor : Pointer(GLFWmonitor), gamma : Float32) : Void 
  fun getGammaRamp = glfwGetGammaRamp(monitor : Pointer(GLFWmonitor)) : Pointer(GLFWgammaramp)
  fun setGammaRamp = glfwSetGammaRamp(monitor : Pointer(GLFWmonitor), ramp : Pointer(GLFWgammaramp)) : Void
end