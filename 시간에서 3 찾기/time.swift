var n = Int(readLine()!)!
var cnt = 0

for time in 0...n {
  for minute in 0..<60 {
    for second in 0..<60 {
      let time = "\(time):\(minute):\(second)"
      if time.contains("3") {
        cnt += 1
      }
    }
  }
}

print(cnt)
