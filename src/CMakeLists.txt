cmake_minimum_required(VERSION 3.10)

# set the project name
project(Tutorial)

# add the executable
add_executable(Tutorial tutorial.cxx)

enable_testing()

# does the application run
add_test(NAME Runs COMMAND Tutorial 25)
