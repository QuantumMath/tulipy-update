all:
	python setup.py build_ext --inplace

clean:
	rm -rf ./build tulipy.so src/tulipy.c

