# [Equalize the Array](https://www.hackerrank.com/challenges/equality-in-a-array/problem?isFullScreen=true&h_r=next-challenge&h_v=zen)
- 다양한 정수로 이루어진 배열 arr이 주어졌을 때, 배열 내에 동일한 값의 element만 남겨놓으려 한다.
- 이때, 동일한 element 값만 남겨놓기 위해 삭제해야될 다른 element들의 최소 개수를 구하라.

<img width="1055" alt="스크린샷 2021-12-19 오후 8 28 27" src="https://user-images.githubusercontent.com/59811450/146673260-8cd4aaab-7cd7-45b5-9733-2457d66dac92.png">

***

## 코드

```swift
func equalizeArray(arr: [Int]) -> Int {
  var arrDic: [Int: Int] = [:]

  arrDic = arr.reduce([:]) { current, next in
    guard let currentValue = current[next] else { return current.merging([next: 1]) { $1 } }
    var varCurrent = current
    varCurrent[next] = currentValue + 1
    return varCurrent
  }

  let sortedValue = arrDic.values.sorted(by: >).first!

  return arr.count - sortedValue
}
```

## 풀이
- arr의 element들을 key로 갖고, 그 개수를 value로 가질 Dictionary, arrDic을 생성한다. 
- arr의 reduce 메소드를 통해 arrDic에 key와 value를 삽입한다.
- arrDic을 sorted 처리하여 value의 내림차순으로 정렬한 후, 첫번째 값을 저장하여 가장 큰 value 값을 구한다.
- 총 배열의 개수 - 가장 많은 수 = 최소로 삭제할 element의 개수이므로 이를 리턴한다.
