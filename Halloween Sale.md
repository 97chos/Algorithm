# [Halloween Sale](https://www.hackerrank.com/challenges/halloween-sale/problem?isFullScreen=true)
- 현재 게임 금액 정수 p가 주어졌을 때, 정수 d원만큼 매번 가격이 할인된다고 한다(최소 가격 정수 m원). 
- 현재 소지하고 있는 금액이 s원일 때, 최대로 살 수 있는 게임의 개수를 구하라.

<img width="1067" alt="스크린샷 2022-01-02 오전 1 50 05" src="https://user-images.githubusercontent.com/59811450/147855597-9f3f4158-85fc-4343-b63b-79095b7f6b2f.png">

***

## 코드

```swift
func howManyGames(p: Int, d: Int, m: Int, s: Int) -> Int {
  var remain = s
  var currentCost = p
  var result = 0
  
  while remain >= currentCost {
    remain -= currentCost
    if currentCost - d <= m {
      currentCost = m
    } else {
      currentCost -= d
    }
    result += 1
  }

  return 0
}
```

## 풀이
- 반복문의 내용을 현재 소지 금액에서 게임 금액을 빼고, 만약 현재 게임 금액의 할인 금액이 최소 금액보다 낮거나 같을 경우 게임 금액을 최소 금액으로 설정하는 것으로 구성한다.
- 현재 갖고 있는 금액이 현재 게임 가격보다 낮아질 때까지 반복문을 실행한다.
