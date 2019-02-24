N, M = gets.split.map(&:to_i)
$field = []
N.times do
  $field << gets.chomp
end

# puts $field.inspect

def dfs(y, x)
  # 移動済みの場所を置き換える
  $field[y][x] = '.'
  # dx,dyを-1～1としてループすることで8方向に移動できる
  for dy in -1..1 do
    for dx in -1..1 do
      ny = y + dy
      nx = x + dx
      if 0 <= ny && ny < N && 0 <= nx && nx < M && $field[ny][nx] == "W"
        dfs(ny, nx)
      end
    end
  end
end

ans = 0
for j in 0..(N-1) do
  for i in 0..(M-1) do
    if $field[j][i] == 'W'
      dfs(j, i)
      # ひとまとまりの水溜りをカウントしたあとでカウントを加算する
      ans += 1
    end
  end
end

puts ans