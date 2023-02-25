objects =  addition.o division.o main.o multiplication.o subtraction.o

calculator: $(objects)
	cc -o calculator $^

%.o: %.c
	cc -c $^ -o $@

clean:
	rm -f calculator $(objects)

.PHONY: clean



