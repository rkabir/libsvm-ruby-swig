CXX? = g++
SWIG ?= swig

#Windows: see ../README ../Makefile.win
RUBY_INCLUDEDIR ?= /usr/lib/ruby/1.8/universal-darwin9.0/

CFLAGS = -O3 -I$(RUBY_INCLUDEDIR) -I.. -arch i386
#LDFLAGS = -shared
# Mac OS
LDFLAGS = -framework Ruby -bundle

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
