from math import log2, ceil


def main():
    n = int(input())
    ret = calculate(n)
    print(ret)


def calculate(target):
    return ceil(log2(target))


if __name__ == '__main__':
    main()
