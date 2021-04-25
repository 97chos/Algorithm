# 이진 탐색 정렬 예시
- 첫 범위에서 절반씩 범위를 좁혀가며 탐색하는 기법
- 범위 내에서 조건을 만족하는 가장 큰 수를 찾을 때 주로 사용


      let binaryArr = [1,3,5,7,9,11,13,15,17,19]

      func binary_search(arr: [Int], target: Int, start: Int, end: Int) -> Int? {
      if start > end {
        return nil
      }

      let mid = (start+end) / 2

      if arr[mid] == target {
        return mid + 1
      } else if arr[mid] > target {
        return binary_search(arr: arr, target: target, start: start, end: mid - 1)
      } else {
        return binary_search(arr: arr, target: target, start: mid + 1, end: end)
      }
    }

    print(binary_search(arr: binaryArr, target: 3, start: 0, end: 10)!)
