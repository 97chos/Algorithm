let n = Int(readLine()!)!

var dp = [Int](repeating: 0, count: n+1)

for i in 4...n {
  dp[i] = dp[i-1] + 1
  if i % 2 == 0 {
    dp[i] = min(dp[i], dp[i/2] + 1)
  } else if i % 3 == 0 {
    dp[i] = min(dp[i], dp[i/3] + 1)
  } else if i % 5 == 0 {
    dp[i] = min(dp[i], dp[i/5] + 1)
  } else {
    dp[i] = dp[i-1] + 1
  }
}

print(dp[n])
