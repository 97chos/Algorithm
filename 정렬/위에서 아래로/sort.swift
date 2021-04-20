let n = Int(readLine()!)!
var result: [Int] = []

for _ in 0..<n {
  result.append(Int(readLine()!)!)
}

for i in 1..<result.count {
  for j in 0..<i {
    if result[i] < result[j] {
      result.insert(result.remove(at: i), at: j)
      break
    }
  }
}

print(result)
