func rotLeft(a: [Int], d: Int) -> [Int] {

  var arr = a
  let range = arr[0..<d]

  arr.removeSubrange(0..<d)
  arr.append(contentsOf: range)

  return arr
}
