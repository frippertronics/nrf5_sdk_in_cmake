set(EXE_NAME blinky)

add_subdirectory(nordic)

add_executable(${EXE_NAME} main.c)
target_link_libraries(${EXE_NAME} PRIVATE nordic)

# Generate .map, .hex and .bin files during and after
# compiling for flashing and debugging purposes
target_link_options(${EXE_NAME} PRIVATE
    -Wl,-Map=${CMAKE_CURRENT_BINARY_DIR}
)

add_custom_command(
    TARGET ${EXE_NAME} POST_BUILD
    COMMAND ${CMAKE_C_SIZE_TOOL} ARGS ${EXE_NAME}.out
    COMMENT "Size of ${EXE_NAME}.out"
)

add_custom_command(
    TARGET ${EXE_NAME} POST_BUILD
    COMMAND ${CMAKE_OBJCOPY} ARGS -O binary 
            ${EXE_NAME}.out ${EXE_NAME}.bin
    COMMENT "Generating ${EXE_NAME}.bin"
)

add_custom_command(
    TARGET ${EXE_NAME} POST_BUILD
    COMMAND ${CMAKE_OBJCOPY} ARGS -O ihex 
            ${EXE_NAME}.out ${EXE_NAME}.hex
    COMMENT "Generating ${EXE_NAME}.hex"
)
