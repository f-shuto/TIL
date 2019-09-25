n = gets.to_i
a = gets.split.map(&:to_i)

def partition(a, p, r)
  x = a[r]
  i = p-1
  (p..r-1).each do |j|
    if a[j] <= x
      i += 1
      t = a[i]
      a[i] = a[j]
      a[j] = t
    end
  end
  t = a[i+1]
  a[i+1] = a[r]
  a[r] = t
  return i + 1
end

q = partition(a, 0, n-1)

ans = []
a.each_with_index do |x, i|
  if i == q
    ans << "[#{x}]"
  else
    ans << x.to_s
  end
end
puts ans.join(" ")