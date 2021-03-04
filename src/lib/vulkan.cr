@[Link("glfw3")]
lib LibGLFW
  alias VkProc = Void -> Void

  type VkInstance = Void
  type VkPhysicalDevice = Void
  type VkAllocationCallbacks = Void
  type VkSurfaceKHR = Void
  type VkResult = Void

  fun vulkanSupported = glfwVulkanSupported : Int32
  fun getRequiredInstanceExtensions = glfwGetRequiredInstanceExtensions(count : Pointer(UInt32)) : Pointer(Pointer(Int8))
  fun getInstanceProcAddress = glfwGetInstanceProcAddress(instance : Pointer(VkInstance), procname : Pointer(Int8)) : VkProc 	
  fun getPhysicalDevicePresentationSupport = glfwGetPhysicalDevicePresentationSupport(instance : Pointer(VkInstance), device : Pointer(VkPhysicalDevice), queuefamily : UInt32) : Int32
  fun createWindowSurface = glfwCreateWindowSurface(instance : Pointer(VkInstance), window : Pointer(Window), allocator : Pointer(VkAllocationCallbacks), surface : Pointer(VkSurfaceKHR)) : VkResult
end
