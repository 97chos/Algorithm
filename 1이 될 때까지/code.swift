var N = Int(readLine()!)!
let K = Int(readLine()!)!

var cnt = 0

while N != 1 {
  if N % K == 0 {
    // N이 K로 나누어 떨어지면 값을 나눈 값을 넣고 카운트
    N /= K
    cnt += 1
  } else {
    // 그렇지 않으면 N에서 1을 감소하고 카운트
    N -= 1
    cnt += 1
  }
}
print(cnt)
