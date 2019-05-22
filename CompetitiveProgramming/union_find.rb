N, M = gets.split.map(&:to_i)

@par = Array.new(N)
@rank = Array.new(N)

def init(n)
  (0..n-1).each do |i|
    # はじめは全部の頂点が根
    @par[i] = i
    @rank[i] = 0
  end
end

def root(x)
  if @par[x] == x
    # 根
    return x;
  else
    # 経路圧縮
    # @par[x] = root(@par[x])
    # return @par[x]
    return @par[x] = root(@par[x])
  end
end

def same?(x, y)
  return root(x) == root(y)
end

def unite(x, y)
  x = root(x)
  y = root(y)

  return if x == y
  
  if @rank[x] < @rank[y]
    @par[x] = y
  else
    @par[y] = x
    if @rank[x] == @rank[y]
      @rank[x] += 1
    end
  end
end

init(N)