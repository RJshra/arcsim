#########################################################
# Darwin                                                #
#########################################################

OBJEXT=.o
LIBEXT=.a
EXEEXT=
F2CEXT=.f
PATHSEP=/
DEFFLG=-D

CC        = gcc
CFLAGS    = -O3
#-faltivec
COUTFLG   = -o ./

FC        = gfortran
FFLAGS    = $(CFLAGS)
FOUTFLG   = $(COUTFLG)

LD        = $(CC)
LDFLAGS   = $(CFLAGS)
LOUTFLG   = $(COUTFLG)

AR        = ar -cr
AOUTFLG   =

RANLIB    = ranlib
RM        = rm -rf

LIBBLAS   = -framework Accelerate 
LIBLAPACK =
LIBMETIS  = -Lexternal/lib/darwin -lmetis

LIBF77 = -lgfortran

# crypto is for ftime, which is used by the timing routines
# the documentation says its in libcompat, but on my system
# there is no libcompat, but libcrypto provides it
LIBC   = -lm -lcrypto

#########################################################
