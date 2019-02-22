# Ruby 競プロメモ

## よく使うメソッド

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

### upcase

### downcase

### index

### select

### reject
