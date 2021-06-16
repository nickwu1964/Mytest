# this target will make the output.o
CC=g++
CFLAG= -c

output: main.o message.o
	$(CC) main.o message.o -o output

main.o: main.cpp
	$(CC) $(CFLAG) main.cpp

message.o: message.cpp message.h
	$(CC) $(CFLAG) message.cpp

clean:
	rm *.o output
