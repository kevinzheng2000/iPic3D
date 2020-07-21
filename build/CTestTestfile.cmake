# CMake generated Testfile for 
# Source directory: /Users/kevinzheng/ipic_test2/ipic3d-git
# Build directory: /Users/kevinzheng/ipic_test2/ipic3d-git/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(GEM-test "/usr/local/Cellar/cmake/3.17.3/bin/cmake" "-DIPIC_TESTS_DIR=/Users/kevinzheng/ipic_test2/ipic3d-git/build/tests" "-DIPIC_SOURCE_DIR=/Users/kevinzheng/ipic_test2/ipic3d-git" "-DIPICEXEC=/Users/kevinzheng/ipic_test2/ipic3d-git/build/iPic3D" "-DMPIEXEC=/Users/kevinzheng/prod/opt/compilers/mpich/3.3.2/bin/mpiexec" "-DMPIEXEC_NUMPROC_FLAG=-n" "-DMPIEXEC_POSTFLAGS=" "-DIPIC_TESTS_DIR=/Users/kevinzheng/ipic_test2/ipic3d-git/build/tests" "-P" "/Users/kevinzheng/ipic_test2/ipic3d-git/testfiles/CMakeRunTest-GEM.txt")
set_tests_properties(GEM-test PROPERTIES  _BACKTRACE_TRIPLES "/Users/kevinzheng/ipic_test2/ipic3d-git/CMakeLists.txt;79;add_test;/Users/kevinzheng/ipic_test2/ipic3d-git/CMakeLists.txt;0;")
add_test(uname-test "/usr/local/Cellar/cmake/3.17.3/bin/cmake" "-P" "/Users/kevinzheng/ipic_test2/ipic3d-git/testfiles/CMakeRunTest-uname.txt")
set_tests_properties(uname-test PROPERTIES  _BACKTRACE_TRIPLES "/Users/kevinzheng/ipic_test2/ipic3d-git/CMakeLists.txt;90;add_test;/Users/kevinzheng/ipic_test2/ipic3d-git/CMakeLists.txt;0;")
subdirs("main")
