lib LibGLFW
  fun getWin32Adapter = glfwGetWin32Adapter(monitor : Pointer(GLFWmonitor)) : Pointer(Int8)
  fun getWin32Monitor = glfwGetWin32Monitor(monitor : Pointer(GLFWmonitor)) : Pointer(Int8)
  fun getWin32Window = glfwGetWin32Window(window : Pointer(GLFWwindow)) : HWND
  fun getWGLContext = glfwGetWGLContext(window : Pointer(GLFWwindow)) : HGLRC
  fun getCocoaMonitor = glfwGetCocoaMonitor(monitor : Pointer(GLFWmonitor)) : CGDirectDisplayID 	
  fun getCocoaWindow = glfwGetCocoaWindow(window : Pointer(GLFWwindow)) : id
  fun getNSGLContext = glfwGetNSGLContext(window : Pointer(GLFWwindow)) : id
  fun getX11Display = glfwGetX11Display(Void) : Pointer(Display)
  fun getX11Adapter = glfwGetX11Adapter(monitor : Pointer(GLFWmonitor)) : RRCrtc
  fun getX11Monitor = glfwGetX11Monitor(monitor : Pointer(GLFWmonitor)) : RROutput
  fun getX11Window = glfwGetX11Window(window : Pointer(GLFWwindow)) : Window
  fun setX11SelectionString = glfwSetX11SelectionString(string : Pointer(Int8)) : Void
  fun getX11SelectionString = glfwGetX11SelectionString(Void) : Pointer(Int8)
  fun getGLXContext = glfwGetGLXContext(window : Pointer(GLFWwindow)) : GLXContext
  fun getGLXWindow = glfwGetGLXWindow(window : Pointer(GLFWwindow)) : GLXWindow
  fun getWaylandDisplay = glfwGetWaylandDisplay(Void) : struct wl_display *
  fun getWaylandMonitor = glfwGetWaylandMonitor(monitor : Pointer(GLFWmonitor)) : struct wl_output *
  fun getWaylandWindow = glfwGetWaylandWindow(window : Pointer(GLFWwindow)) : struct wl_surface *
  fun getEGLDisplay = glfwGetEGLDisplay(Void) : EGLDisplay
  fun getEGLContext = glfwGetEGLContext(window : Pointer(GLFWwindow)) : EGLContext
  fun getEGLSurface = glfwGetEGLSurface(window : Pointer(GLFWwindow)) : EGLSurface
  fun getOSMesaColorBuffer = glfwGetOSMesaColorBuffer(window : Pointer(GLFWwindow), width : Pointer(Int32), height : Pointer(Int32), format : Pointer(Int32), buffer : Pointer(Pointer(Void))) : Int32
  fun getOSMesaDepthBuffer = glfwGetOSMesaDepthBuffer(window : Pointer(GLFWwindow), width : Pointer(Int32), height : Pointer(Int32), bytesPerValue : Pointer(Int32), buffer : Pointer(Pointer(Void))) : Int32
  fun getOSMesaContext = glfwGetOSMesaContext(window : Pointer(GLFWwindow)) : OSMesaContext
end