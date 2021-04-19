// input: n x n의 공간 크기
var input = Int(readLine()!)!
// locate: 여행가가 이동할 LRUD 배열
let locate = (readLine()?.split(separator: " ").map{ String($0)})!

var x = 1
var y = 1

let moveTypes = ["L","R","U","D"]

// 좌표 벡터 값
var dx = [0,0,-1,1]
var dy = [-1,1,0,0]

for toMove in locate {
  var toX = 0
  var toY = 0

  for i in 0..<moveTypes.count {
    if toMove == moveTypes[i] {
      toX = x + dx[i]
      toY = y + dy[i]
    }
  }
  
  // 만약 이동할 좌표가 평면을 벗어나는 경우 해당 이동은 무효 처리
  if toX < 1 || toX > input || toY < 1 || toY > input {
    continue
  }
  x = toX
  y = toY
}

print(x,y)
