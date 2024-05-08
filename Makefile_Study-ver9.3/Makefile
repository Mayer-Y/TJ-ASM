############
#Version.01# 
############

# test1: main.c fun1.c fun2.c
# 	gcc -o test1 main.c fun1.c fun2.c

############
#Version.02# 
############

# CXX = gcc
# TARGET = test2 
# OBJ = main.o fun1.o fun2.o

# $(TARGET): $(OBJ)
# 	$(CXX) -o $(TARGET) $(OBJ)

# main.o: main.c
# 	$(CXX) -c main.c
# fun1.o: fun1.c
# 	$(CXX) -c fun1.c
# fun2.o: fun2.c
# 	$(CXX) -c fun2.c

############ 
#Version.03# 
############

CXX = gcc
TARGET = test3
SRC = $(wildcard *.c)
OBJ = $(patsubst %.c, %.o, $(SRC))

CXXFLAGS = -c -Wall

$(TARGET): $(OBJ)
	$(CXX) -o $@ $^

%o:%.c
	$(CXX) $(CXXFLAGS) $< -o $@

.PHONY: clean
clean:
	rm -f *.o $(TARGET)

############ 
#Version.04# 
############

# CXX = gcc
# TARGET = test4
# OBJ = main.o fun1.o fun2.o

# CXXFLAGS = -c -Wall

# $(TARGET): $(OBJ)
# 	$(CXX) -o $@ $^

# %.o: %.c
# 	$(CXX) $(CXXFLAGS) $< -o $@

# .PHONY: clean
# clean:
# 	rm -f *.o $(TARGET)

