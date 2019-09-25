# AOJ ALDS1_5_B

n = gets.to_i
a = gets.split.map(&:to_i)

INF = 10**20

def merge(a, left, mid, right)
  n1 = mid - left
  n2 = right - mid
  l = Array.new(n1+1, 0)
  (0..n1).each do |i|
    l[i] = a[left+i]
  end
  r = Array.new(n2+1, 0)
  (0..n2).each do |i|
    r[i] = a[mid+i]
  end
  l[n1] = INF
  r[n2] = INF
  i = 0
  j = 0
  (left..right-1).each do |k|
    if l[i] <= r[j]
      a[k] = l[i]
      i += 1
    else
      a[k] = r[j]
      j += 1
    end
  end
end

def mergeSort(a, left, right)
  if left+1 < right
    mid = (left+right)/2
    mergeSort(a, left ,mid)
    mergeSort(a, mid, right)
    merge(a, left, mid, right)
  end
end

mergeSort(a, 0, n)

puts a.join(" ")
