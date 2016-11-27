from memory_profiler import profile

@profile
def main():
    line = input()
    ret = calculate(line)
    print(ret)


def calculate(line):
    ns = [int(x) for x in line.split(" ")]
    return sum(ns)


if __name__ == '__main__':
    import time
    start = time.time()
    main()
    end = time.time()
    print("Program end in {} ms".format(end - start))
