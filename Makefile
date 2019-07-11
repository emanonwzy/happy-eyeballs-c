TARGETS = \
	  connect_gai \
	  connect_rfc6555 \
	  connect_rfc6555_min \
	  test \
	  # end

CFLAGS+=-Wall

all: $(TARGETS)

connect_%: main.o %.o
	$(CC) $(CFLAGS) $^ -o $@

connect_rfc6555_min: rfc6555_lib.o

test: CFLAGS+=-g
test: rfc6555_lib.o

clean:
	rm -f *.o
	rm -f $(TARGETS)
