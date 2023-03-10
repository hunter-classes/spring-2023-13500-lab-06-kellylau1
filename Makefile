CXXFLAGS +=-std=c++11

main: main.o caesar.o vigenere.o decryption.o
	g++ -o main main.o caesar.o vigenere.o decryption.o

tests: tests.o caesar.o vigenere.o decryption.o 
	g++ -o tests tests.o caesar.o vigenere.o decryption.o 

test-ascii: test-ascii.cpp test-ascii.h
	g++ -g -o test-ascii test-ascii.cpp 
	
main.o: main.cpp test-ascii.h caesar.h vigenere.h decryption.h 

tests.o: tests.cpp doctest.h caesar.h vigenere.h decryption.h 

test-ascii: test-ascii.cpp test-ascii.h
	g++ -g -o test-ascii test-ascii.cpp 

caesar.o: caesar.cpp caesar.h 
	g++ -g -c caesar.cpps

vigenere.o: vigenere.cpp vigenere.h 
	g++ -g -c vigenere.cpp

decryption.o: decryption.cpp decryption.h 
	g++ -g -c decryption.cpp
clean:
	rm -f main.o tests.o caesar.o vigenere.o decryption.o

