PROGS:=$(patsubst %.v,%,$(wildcard *.v))

.PHONY: all
all: $(PROGS)
	@:

% : %.cc

%: %.cc %.v
	verilator -Wall --cc $@.v --exe $@.cc
	cd obj_dir; make -f V$@.mk
	cp -v obj_dir/V$@ $@


.PHONY: clean
clean:
	rm -rf $(PROGS) obj_dir *~

