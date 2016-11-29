def main():
    ab = input()
    a, b = ab.split(" ")
    ret = calculate(int(a), int(b))
    print(ret)


def calculate(a, b):
    div = b / a
    n = int(div)
    if div == n:
        return n
    else:
        return n + 1


if __name__ == '__main__':
    main()
