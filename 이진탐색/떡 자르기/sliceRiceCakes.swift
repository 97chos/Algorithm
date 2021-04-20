let length = Int(readLine()!)!
let cakes = (readLine()?.split(separator: " ").map{ Int(String($0))! })!.sorted(by: <)

// 재귀 함수
func cutCakes(_ arr: [Int], _ target: Int, start: Int, end: Int) -> Int? {
  if start > end {
    return nil
  }

  // mid : start와 end의 중간 값. 여기서는 절단기로 자르는 위치를 의미한다.
  let mid = (start+end) / 2
  // remain : 절단기(mid)로 자른 떡들의 총합 길이. 절단기보다 떡이 짧을 수 있으므로 max()메소드를 이용하여 음수를 걸러내었다.
  let remain = arr.map{ max($0 - mid,0) }.reduce(0, +)

  // 만약 자른 떡들의 길이가 목표(target)과 같다면 절단기 길이를 return한다.
  if remain == target {
    return mid
    // 만약 만약 자른 떡들의 길이가 목표(target)보다 짧다면, 범위의 끝 부분을 감소하여 절단기의 위치를 감소시킨다.
  } else if remain < target {
    return cutCakes(arr, target, start: start, end: mid - 1)
    // 만약 만약 자른 떡들의 길이가 목표(target)보다 길다면, 범위의 시작 부분을 증가하여 절단기의 위치를 증가시킨다.
  } else {
    return cutCakes(arr, target, start: mid + 1, end: end)
  }
}

print(cutCakes(cakes, length, start: 0, end: cakes.last!)!)
