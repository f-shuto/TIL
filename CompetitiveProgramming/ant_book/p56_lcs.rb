# 最長共通部分列問題

n = gets.to_i
m = gets.to_i
s = gets.chomp
t = gets.chomp

# dp = Array.new(n) { Array.new(m+1, 0) }
dp = Array.new(n+1) { Array.new(m+1, 0) }

for i in 0..(n-1) do
  for j in 0..(m-1) do
    if s[i] == t[j]
      dp[i+1][j+1] = dp[i][j] + 1
    else
      dp[i+1][j+1] = [dp[i][j+1], dp[i+1][j]].max
    end
  end
end

puts dp[n][m]