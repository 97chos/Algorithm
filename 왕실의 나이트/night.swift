let input = readLine()!

// 현제 체스 말이 놓여져 있는 위치 구하기
// unicodeSclar라는 방법도 있으며, 속도는 좀더 빠르나 실제 성능차이는 크게 나지 않음
let column = input[input.index(input.startIndex, offsetBy: 0)]
let row = Int("\(input[input.index(input.startIndex, offsetBy: 1)])")!

// 알파벳의 아스키코드를 이용하여 체스 말이 체스판 column 어느 곳에 위치하는지 확인
let columnAscii = column.asciiValue! - Character("a").asciiValue!
var cnt = 0

// Night가 움직일 수 있는 경우의 수
let steps = [(-2,-1),(-2,1),(2,-1),(2,1),(1,2),(-1,2),(1,-2),(-1,-2)]

for move in steps {
  let toX = Int(columnAscii) + move.0
  let toY = row + move.1

  if toX > 0 && toX <= 8 && toY <= 8 && toY > 0{
    cnt += 1
  }
}

print(cnt)
