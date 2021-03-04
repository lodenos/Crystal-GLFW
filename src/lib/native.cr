@[Link("glfw3")]
lib LibGLFW
  type HWND = Void
  type HGLRC = Void
  type CGDirectDisplayID = Void
  type ID = Void
  type Display = Void
  type RRCrtc = Void
  type RROutput = Void
  type GLXContext = Void
  type GLXWindow = Void
  type EGLDisplay = Void
  type EGLContext = Void
  type EGLSurface = Void
  type OSMesaContext = Void
  type Wl_display = Void
  type Wl_output = Void
  type Wl_surface = Void

  fun getWin32Adapter = glfwGetWin32Adapter(monitor : Pointer(Monitor)) : Pointer(Int8)
  fun getWin32Monitor = glfwGetWin32Monitor(monitor : Pointer(Monitor)) : Pointer(Int8)
  fun getWin32Window = glfwGetWin32Window(window : Pointer(Window)) : HWND
  fun getWGLContext = glfwGetWGLContext(window : Pointer(Window)) : HGLRC
  fun getCocoaMonitor = glfwGetCocoaMonitor(monitor : Pointer(Monitor)) : CGDirectDisplayID 	
  fun getCocoaWindow = glfwGetCocoaWindow(window : Pointer(Window)) : ID
  fun getNSGLContext = glfwGetNSGLContext(window : Pointer(Window)) : ID
  fun getX11Display = glfwGetX11Display : Pointer(Display)
  fun getX11Adapter = glfwGetX11Adapter(monitor : Pointer(Monitor)) : RRCrtc
  fun getX11Monitor = glfwGetX11Monitor(monitor : Pointer(Monitor)) : RROutput
  fun getX11Window = glfwGetX11Window(window : Pointer(Window)) : Window
  fun setX11SelectionString = glfwSetX11SelectionString(string : Pointer(Int8)) : Void
  fun getX11SelectionString = glfwGetX11SelectionString : Pointer(Int8)
  fun getGLXContext = glfwGetGLXContext(window : Pointer(Window)) : GLXContext
  fun getGLXWindow = glfwGetGLXWindow(window : Pointer(Window)) : GLXWindow
  fun getWaylandDisplay = glfwGetWaylandDisplay : Pointer(Wl_display) 
  fun getWaylandMonitor = glfwGetWaylandMonitor(monitor : Pointer(Monitor)) : Pointer(Wl_output)
  fun getWaylandWindow = glfwGetWaylandWindow(window : Pointer(Window)) : Pointer(Wl_surface)
  fun getEGLDisplay = glfwGetEGLDisplay : EGLDisplay
  fun getEGLContext = glfwGetEGLContext(window : Pointer(Window)) : EGLContext
  fun getEGLSurface = glfwGetEGLSurface(window : Pointer(Window)) : EGLSurface
  fun getOSMesaColorBuffer = glfwGetOSMesaColorBuffer(window : Pointer(Window), width : Pointer(Int32), height : Pointer(Int32), format : Pointer(Int32), buffer : Pointer(Pointer(Void))) : Int32
  fun getOSMesaDepthBuffer = glfwGetOSMesaDepthBuffer(window : Pointer(Window), width : Pointer(Int32), height : Pointer(Int32), bytesPerValue : Pointer(Int32), buffer : Pointer(Pointer(Void))) : Int32
  fun getOSMesaContext = glfwGetOSMesaContext(window : Pointer(Window)) : OSMesaContext
end
