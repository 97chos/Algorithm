# [Taum and B'day](https://www.hackerrank.com/challenges/taum-and-bday/problem?isFullScreen=true)
- 선물 b의 개수 b, 선물 w의 개수 w, 선물 b의 가격 bc, 선물 w의 가격 wc, 선물 b -> w 혹은 w -> b로 교환하는 비용 z, 총 5개의 정수가 주어진다.
- 선물 b,w를 주어진 개수에 맞게 구한다고 할 때, 가격들을 조합하여 나올 수 있는 금액 중 최소 금액을 구하라.

<img width="1061" alt="스크린샷 2021-12-22 오전 1 00 25" src="https://user-images.githubusercontent.com/59811450/146960690-91bfa5d7-5517-4c48-850b-badd6e76087f.png">
<img width="1061" alt="스크린샷 2021-12-22 오전 1 00 37" src="https://user-images.githubusercontent.com/59811450/146960720-07cd691c-7579-4159-9bf5-178ee7144298.png">

***

## 코드

```swift
func taumBday(b: Int, w: Int, bc: Int, wc: Int, z: Int) -> Int {
  if bc + z < wc {
    return (b + w) * bc + (w * z)
  } else if wc + z < bc {
    return (b + w) * wc + (b * z)
  } else {
    return (b * bc) + (w * wc)
  }
}
```

## 풀이
- 두 선물 가격 중 최소 가격으로 구매한 뒤 나머지 선물을 교환했을 때의 가격과, 나머지 선물 가격을 비교하여 최소 가격을 구한다.

## 다른 풀이

```swift
func taumBday(b: Int, w: Int, bc: Int, wc: Int, z: Int) -> Int {
  var minCost = 0
  var changeTo = 0
  let totalCount = b + w
  let originCost = (b * bc) + (w * wc)

  if bc <= wc {
    minCost = bc
    changeTo = w
  } else {
    minCost = wc
    changeTo = b
  }

  let result = (totalCount * minCost) + (changeTo * z)

  return result < originCost ? result : originCost
}
```
