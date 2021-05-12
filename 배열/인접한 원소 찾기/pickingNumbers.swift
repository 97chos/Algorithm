func pickingNumbers(a: [Int]) -> Int {
  let arr = a
  var resultArr: [[Int]] = []
  var index = 0

  while index < arr.count - 1 {
    var cutArr: [Int] = [arr[index]]

    for i in index+1..<arr.count {
      if abs(arr[index] - arr[i]) < 2 {
        cutArr.append(arr[i])
        if i == arr.count - 1 {
          index += 1
        }
      } else {
        if cutArr.count == 1 {
          index += 1
          break
        } else {
          resultArr.append(cutArr)
          index = i
          break
        }
      }

      if cutArr.count >= 2 && i == arr.count - 1 {
        resultArr.append(cutArr)
        index = i
      }
    }
  }

  return resultArr.max{ $0.count < $1.count }!.count
}
