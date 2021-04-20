let n = (readLine()?.split(separator: " ").map{ Int(String($0))!})!
var array1 = (readLine()?.split(separator: " ").map{ Int(String($0))!})!.sorted(by: <)
let array2 = (readLine()?.split(separator: " ").map{ Int(String($0))!})!.sorted(by: >)

for i in 0..<n[1] {
  array1[i] = array2[i]
}

print(array1.reduce(0, +))
