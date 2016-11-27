def main():
    L = input()
    N = input()
    Ws = input()
    int_ws = [int(x) for x in Ws.split(" ")]
    ret = calculate(int(L), int(N), int_ws)
    print(ret)


def calculate(L, N, Ws):
    sorted_ws = sorted(Ws)
    n = 0
    for w in sorted_ws:
        L -= int(w)
        n += 1
        if L < 0:
            return n - 1
    return n


if __name__ == '__main__':
    main()
