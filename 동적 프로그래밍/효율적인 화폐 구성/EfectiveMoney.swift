let coinCount = Int(readLine()!)!
var account = Int(readLine()!)!
var money = readLine()!.split(separator: " ").map{ Int(String($0))! }

// 금액의 크기만큼 배열을 생성한다. 이후 배열의 인덱스를 '금액'으로 고려하여 메모이제이션을 진행한다.
// 10001은 만들 수 없는 금액임을 의미한다.
var dp = [Int](repeating: 10001, count: account+1)
dp[0] = 0

// 화폐의 수량만큼 1차 for문을 돌린다.
for i in 0..<coinCount {
  // 화폐의 수량이
  for j in money[i]...account {
    if dp[j - money[i]] != 10001 {
      dp[j] = min(dp[j], dp[j - money[i]] + 1)
    }
  }
}

print(dp[account])
