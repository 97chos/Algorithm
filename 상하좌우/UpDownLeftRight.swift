var input = Int(readLine()!)!
let locate = (readLine()?.split(separator: " ").map{ String($0)})!

var x = 1
var y = 1

let moveTypes = ["L","R","U","D"]

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
  if toX < 1 || toX > input || toY < 1 || toY > input {
    continue
  }
  x = toX
  y = toY
}

print(x,y)
