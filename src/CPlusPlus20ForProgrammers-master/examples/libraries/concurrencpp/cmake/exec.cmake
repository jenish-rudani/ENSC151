function(exec)
  set(args "")
  foreach(arg IN LISTS ARGN)
    string(FIND "${arg}" " " index)
    if(index EQUAL -1)
      list(APPEND args "${arg}")
    else()
      list(APPEND args "\"${arg}\"")
    endif()
  endforeach()

  string(ASCII 27 Esc)
  list(JOIN args " " args)
  message(STATUS "${Esc}[36mExecuting: ${args}${Esc}[m")

  execute_process(COMMAND ${ARGN} RESULT_VARIABLE result)

  if(NOT result EQUAL 0)
    message(FATAL_ERROR "${Esc}[1;31mBad exit status (${result})${Esc}[m")
  endif()
endfunction()
