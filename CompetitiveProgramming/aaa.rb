# 1011
# 2
#→4
#(1,3),(1,4),(2,4),(3,4)

# 0110110101111
# 4
#→39

s = gets.chomp
k = gets.to_i
n = s.size

ans = 0
cnt = 0
(0..n-1).each do |i|
  if s[i] == '1'
    cnt += 1
  end
  if cnt >= k
    ans += 1
  end
end

(0..n-1).each do |i|
  if s[i] == '1'
    cnt -= 1
  end
  if cnt >= k
    ans += 1
  end
end

puts cnt
