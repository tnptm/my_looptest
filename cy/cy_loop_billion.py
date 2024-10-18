import cython

def loop_py():
	#counter: int = 0
	counter: cython.int
	counter = 0
	#counter = 0
	while counter < 1000000000:
		counter+=1
	print(counter)
