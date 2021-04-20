let stocks = (readLine()?.split(separator: " ").map{ Int(String($0))! })!
let search = (readLine()?.split(separator: " ").map{ Int(String($0))! })!
var result: [String] = []

for i in search {
  if stocks.contains(i) {
    result.append("yes")
  } else {
    result.append("no")
  }
}

print(result.joined(separator: " "))
