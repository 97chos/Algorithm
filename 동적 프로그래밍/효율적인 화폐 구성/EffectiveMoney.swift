// moneyCount = 화폐의 수량
let moneyCount = Int(readLine()!)!
// account = 목표 금액
var account = Int(readLine()!)!
// money = 화폐의 종류
var money = readLine()!.split(separator: " ").map{ Int(String($0))! }

// 금액의 크기만큼 배열을 생성한다. 이후 배열의 인덱스를 '금액'으로 고려하여 메모이제이션을 진행한다.
// 10001은 만들 수 없는 금액임을 의미한다.
var dp = [Int](repeating: 10001, count: account+1)
dp[0] = 0

// 화폐의 수량만큼 1차 for문을 돌린다.
for i in 0..<coinCount {
  // 화폐 금액부터 목표 금액만큼 2차 for문을 돌린다.
  for j in money[i]...account {
    // 만약 현재 금액(인덱스 j)이 현재 for문에서 돌고 있는 화폐로 만들 수 있는 금액이라면 
    if dp[j - money[i]] != 10001 {
      // 현재 금액으로 만드는데 들어가는 이전 화폐의 수량과 현재 금액으로 만드는데 들어가는 for문에서 돌고 있는 화폐의 수량을 비교하여 최소값으로 갱신한다.
      dp[j] = min(dp[j], dp[j - money[i]] + 1)
    }
  }
}

print(dp[account])
