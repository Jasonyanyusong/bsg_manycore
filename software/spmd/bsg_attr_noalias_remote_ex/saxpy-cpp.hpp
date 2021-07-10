#ifndef __SAXPY_CPP_HPP
#define __SAXPY_CPP_HPP

/*
 * Header for C++ implementations of SAXPY 
 *
 * See the implementations within saxpy-cpp.cpp (and others) for more
 * details on the implementation, and the intent of each function
 */

// saxpy.h is generated by python and contains randomly generated vectors
#include "saxpy.h"

#ifdef __cplusplus
extern "C" 
#endif
void saxpy_cpp(float bsg_attr_remote * bsg_attr_noalias A, float bsg_attr_remote * bsg_attr_noalias B, float bsg_attr_remote * bsg_attr_noalias C, float alpha);

#ifdef __cplusplus
extern "C" 
#endif
void saxpy_cpp_moreunroll(float bsg_attr_remote * bsg_attr_noalias A, float bsg_attr_remote * bsg_attr_noalias B, float bsg_attr_remote * bsg_attr_noalias C, float alpha);

#endif // __SAXPY_C_HPP
