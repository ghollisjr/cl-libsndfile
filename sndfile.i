%module sndfile
%{
  /* Includes the header in the wrapper code */
#include "stdio.h"
#include "sndfile.h"
  %}
 
/* Parse the header file to generate wrappers */
%include "/usr/include/sndfile.h"
