execute_process(COMMAND "/home/richu/catkin_ws/build/diagnose_arm/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/richu/catkin_ws/build/diagnose_arm/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
