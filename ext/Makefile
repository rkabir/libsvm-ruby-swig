CXX? = g++
SWIG ?= swig

#Windows: see ../README ../Makefile.win

# RUBY_INCLUDEDIR ?= /usr/lib/ruby/1.8/universal-darwin9.0/
RUBY_INCLUDEDIR ?= /System/Library/Frameworks/Ruby.framework/Versions/1.8/Headers/

# choose one of the following (only i386 has been tested, you may want x86_64 for Snow Leopard):
TARGET_ARCH ?= -arch i386
# TARGET_ARCH ?= -arch ppc
# TARGET_ARCH ?= -arch x86_64
# TARGET_ARCH ?= -arch i386 -arch x86_64

CFLAGS = -O3 -I$(RUBY_INCLUDEDIR) -I.. $(TARGET_ARCH)
#LDFLAGS = -shared
# Mac OS
LDFLAGS = -framework Ruby -bundle $(TARGET_ARCH)

all: libsvm.bundle

libsvm.bundle: libsvm_wrap.o svm.o
	$(CXX) $(LDFLAGS) -o libsvm.bundle libsvm_wrap.o svm.o

libsvm_wrap.o: svm.h
	$(CXX) $(CFLAGS) -fPIC -c libsvm_wrap.cxx

svm.o: svm.cpp svm.h
	$(CXX) $(CFLAGS) -fPIC -c svm.cpp

clean:
	rm -f *~ *.o *.bundle svm.o

moreclean:	clean
	rm -f libsvm_wrap.c??

install:
	cp libsvm.bundle ../lib/
