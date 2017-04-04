cmake_minimum_required(VERSION 3.0.0)

# Find includes in corresponding build directories
set(CMAKE_INCLUDE_CURRENT_DIR ON)
# Instruct CMake to run moc automatically when needed.
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_BUILD_DIR ${PROJECT_SOURCE_DIR}/build)

#Add any other src file you may write
set(eul_2_SRC
    main.cpp
)

#Rename the source files that will create the library, to a proper name!
#set(eul_2_LIB
#    eul_2-lib.cpp
#)

#Add any other header files
set(eul_2_INCLUDES
    headers/eul_2_facilities.h
)

if(EXISTS "${CMAKE_SOURCE_DIR}/.git")
	execute_process(
		COMMAND git rev-parse HEAD
		WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
		OUTPUT_VARIABLE GIT_BRANCH
		OUTPUT_STRIP_TRAILING_WHITESPACE
	)
else()
	set(GIT_BRANCH "Unknown")
endif()
add_definitions(-DGIT_BRANCH=${GIT_BRANCH})
#set build dir for your executable
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_BUILD_DIR}/bin)
set(LIBRARY_OUTPUT_PATH ${CMAKE_BUILD_DIR}/lib)
message( STATUS "EXECUTABLE_OUTPUT_PATH: " ${EXECUTABLE_OUTPUT_PATH} )
message( STATUS "LIBRARY_OUTPUT_PATH: " ${LIBRARY_OUTPUT_PATH} )

file(MAKE_DIRECTORY ${EXECUTABLE_OUTPUT_PATH})
file(MAKE_DIRECTORY ${LIBRARY_OUTPUT_PATH})

# Tell CMake to create the eul_2 executable and/or shared libs
#add_library(somename SHARED ${eul_2_LIB})
add_executable(eul_2 ${eul_2_SRC})
#target_link_libraries( eul_2 somename )

#If your app, links to an external lib -ie Boost
#target_link_libraries( eul_2 ${Boost_LIBRARIES} )

# Install the executable and libraries (don't forget to uncomment the lib line if you want)
install(TARGETS eul_2 DESTINATION ${CMAKE_INSTALL_PREFIX}/bin)
#install(TARGETS somename DESTINATION ${CMAKE_INSTALL_PREFIX}/lib)
