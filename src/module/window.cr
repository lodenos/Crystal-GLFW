require "../lib/window"

class GLFW::Window
  @ptrWindow : Pointer(LibGLFW::Window)

  def initialize(width : Int32, height : Int32)
    @ptrWindow = LibGLFW.createWindow width, height, "default", nil, nil
  end

  def initialize(width : Int32, height : Int32, title : String)
    @ptrWindow = LibGLFW.createWindow width, height, title, nil, nil
  end

  # def initialize(width : Int32, height : Int32, title : String, monitor : Monitor, share : Window)
  #   @ptrWindow = LibGLFW.createWindow width, height, title, monitor.to_unsafe, share.to_unsafe
  # end

  def finalize
    LibGLFW.destroyWindow @ptrWindow
  end

  ##############################################################################
  # Public Method
  ##############################################################################

  def hint(hint : Int32, value : Int32) : Void
    LibGLFW.windowHint hint, value
  end

  def hint_string(hint : Int32, value : Pointer(Int8))
    LibGLFW.windowHintString hint, value
  end

  def make_context_current
    LibGLFW.makeContextCurrent @ptrWindow
  end

  def position : NamedTuple
    x = 0_i32
    y = 0_i32
    ptrX = pointerof(x)
    ptrY = pointerof(y)
    LibGLFW.getWindowPos @ptrWindow, ptrX, ptrY
    { x: ptrX.value, y: ptrY.value }
  end

  def position(x : Int32, y : Int32) : Void
    LibGLFW.setWindowPos @ptrWindow, x, y
  end

  def should_close : Int32
    LibGLFW.windowShouldClose @ptrWindow
  end

  def should_close=(value : Int32) : Void
    LibGLFW.setWindowShouldClose @ptrWindow, value
  end


  def swap_buffers
    LibGLFW.SwapBuffers(window : Pointer(Window)) : Void

  def show : Void
    LibGLFW.showWindow @ptrWindow
  end

  def title=(title : String) : Void
    LibGLFW.setWindowTitle @ptrWindow, title.to_unsafe
  end
end
