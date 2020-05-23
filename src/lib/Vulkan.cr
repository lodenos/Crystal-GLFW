lib LibGLFW
  type VkProc = Void -> Void

  fun vulkanSupported = glfwVulkanSupported(Void) : Int32
  fun getRequiredInstanceExtensions = glfwGetRequiredInstanceExtensions(count : Pointer(UInt32)) : Pointer(Pointer(Int8))
  fun getInstanceProcAddress = glfwGetInstanceProcAddress(instance : VkInstance, procname : Pointer(Int8)) : VkProc 	
  fun getPhysicalDevicePresentationSupport = glfwGetPhysicalDevicePresentationSupport(instance : VkInstance, device : VkPhysicalDevice, queuefamily : UInt32) : Int32
  fun createWindowSurface = glfwCreateWindowSurface(instance : VkInstance, window : Pointer(Window), allocator : Pointer(VkAllocationCallbacks), surface : Pointer(VkSurfaceKHR)) : VkResult
end