CC=gcc
AR=ar
OBJECTS_MAIN=main.o
OBJECTS_LIB=power.o basicMath.o
FLAGS= -Wall 

all: mymaths mymathd mains maind
mymaths:libmyMath.a
mymathd:libmyMath.so
mains: $(OBJECTS_MAIN) libmyMath.a
$(CC) $(FLAGS) -o mains $(OBJECTS_MAIN) libmyMath.a
maind: $(OBJECTS_MAIN) libmyMath.so
$(CC) $(FLAGS) -o maind $(OBJECTS_MAIN) ./libmyMath.so

mymathd: $(OBJECTS_LIB) myMath.h
$(CC) -shared -o libmyMath.so $(OBJECTS_LIB)

mymaths: $(OBJECTS_LIB)myMath.h
$(AR) -rcs libmyMath.a $(OBJECTS_LIB)

power.o: power.c myMath.h
$(CC) $(FLAGS) -c powr.c
basicMath.o: basicMath.c myMath.h
$(CC) $(FLAGS) -c basicMath.c
main.o: main.c   
$(CC) $(FLAGS) -c main.c

.PHONY: clean all

clean:
rm -f *.o *.a *.so mains maind





