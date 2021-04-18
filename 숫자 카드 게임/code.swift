// 배열의 1번 인덱스 = 입력할 카드의 줄 수
let input = readLine()?.split(separator: " ").map{ Int(String($0))! }

var result = 0

for _ in 1...input![1] {
  let cards = readLine()?.split(separator: " ").map{ Int(String($0))! }

  // 만약 입력한 값 중 가장 작은 수가 result보다 큰 경우 result에 해당 값 대입
  if (cards?.min())! > result {
    result = (cards?.min())!
  }
}

print(result)
