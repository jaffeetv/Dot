function(cdotman_symlink_to out_var symlink_path)
    set(result)
    if(NOT ARGC EQUAL 2 )
        set(error_msg "Unexpected argument number: ${ARGC};")
        cdotman_trace_error(${error_msg})
    endif()
    get_filename_component(symlink_path ${symlink_path} ABSOLUTE)


    cdotman_is_symlink(is_path_symlink ${symlink_path})
    if(${is_path_symlink})
        get_filename_component(symlink_path ${symlink_path} REALPATH)
        set(${out_var} ${symlink_path} PARENT_SCOPE)
    endif()
endfunction()
