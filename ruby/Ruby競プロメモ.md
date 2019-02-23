# Ruby 競プロメモ

# よく使うメソッド

### gets

標準入力を文字列として取得する

### chomp

文字列末尾の改行コードを削除する
標準入力を文字列として扱う場合によく使う

### puts

標準出力に値を出力する
末尾には改行コードが付く

### to_i

整数値変換
標準入力を整数値に変換するのに使う

```ruby
N = gets.to_i
```

### to_f

浮動小数点数変換
ruby では整数値同士の演算は整数値になるので、小数で演算したい場合は`to_i`ではなくこちらを使う

### to_r

有理数に変換する
（こんなのもあるとはね・・・。答えを算出するまでの途中計算で端数を出したくないときに使えそう？）

```ruby
irb(main):009:0> 0.33333.to_r
=> (3002369727582815/9007199254740992)
irb(main):010:0> 0.25.to_r
=> (1/4)
```

### map

### to_a

### inject

ブロックの繰り返し処理に使う

- 数列の和を計算したいときによく使う
  - （Ruby 2.x からは sum メソッドが使える）

#### 例

```ruby
# 数列の和を計算
irb(main):003:0> [1,3,5].inject(:+)
=> 9

# 初期値を指定したい場合
irb(main):009:0> [1,3,5].inject(100, :+)
=> 109

```

### gcd

### lcm

### abs

### chars

### join

### reverse

### gsub

### sort

### split

### permutation

### product

### combination

### max

### min

### prime?

### prime_division

### odd?

### even?

### break

### exit

### count

### size

### eval

文字列をコードとして実行する
動的に計算式を作るときとかに使うと楽できる

```ruby
irb(main):003:0> eval("3+2")
=> 5
```

### upcase

### downcase

### index

### select

### reject

# tips

## 文字列の範囲

```ruby
## ..は終端を含む
irb(main):041:0> "abcde"[1..3]
=> "bcd"
## ...は終端を含まない
irb(main):042:0> "abcde"[1...3]
=> "bc"
```
