### 2 の n 乗を表す

```
1 << n
```

### 10 進数を 2 進数で表す

```
irb(main):013:0> 10.to_s(2)
=> "1010"
```

## 下から i ビット目がゼロかどうかを判別

```
> x & (1<<i)
=> 0の場合は下からiビット目はゼロ
　 0以外の場合は下からiビット目は1

irb(main):013:0> 10.to_s(2)
=> "1010"
irb(main):014:0> 10 & (1<<1)
=> 2
irb(main):015:0> 10 & (1<<2)
=> 0
```

### 問題
- [AtCoder Beginner Contest 079 C - Train Ticket](https://atcoder.jp/contests/abc079/tasks/abc079_c)
- [AtCoder Beginner Contest 080 C - Shopping Street](https://atcoder.jp/contests/abc080/tasks/abc080_c)
- [AtCoder Beginner Contest 104 C - All Green](https://atcoder.jp/contests/abc104/tasks/abc104_c)
- [AtCoder Beginner Contest 128 C - Switches](https://atcoder.jp/contests/abc128/submissions/6968835)


