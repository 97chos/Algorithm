# [Viral Advertising](https://www.hackerrank.com/challenges/strange-advertising/problem?isFullScreen=true)
- 고객들에게 새로운 바이럴 마케팅 기법을 적용하려고 한다.
- 이 바이럴 마케팅은 **전달된 사람 수 / 2**의 사람들에게만 효과가 있으며, **효과를 받은 사람들은 다음 날 또 다시 다른 3명에게 이를 전달**하는 방식이다.
- ex) 5명에게 전달 -> 5 / 2인 2명에게만 효과 (총 2명)-> 2명의 사람들이 각자 3명씩 전달하여 6명에게 추가로 전달 -> 6 / 2인 3명에게만 추가로 효과 (총 5명) -> ... 
- 5명을 대상으로 시작하며 마케팅하는 기간 일수 n이 주어졌을 때, 바이럴 마케팅 효과를 받은 사람은 총 몇 명인지 구하라.

<img width="1059" alt="스크린샷 2022-01-31 오후 8 04 53" src="https://user-images.githubusercontent.com/59811450/151782906-b332d58f-f7c6-48af-bdbd-42b221742ca3.png">
<img width="1059" alt="스크린샷 2022-01-31 오후 8 05 05" src="https://user-images.githubusercontent.com/59811450/151782952-b4cede53-c6be-402c-a20a-5aa350517ea4.png">

***

## 코드

```swift
func viralAdvertising(n: Int) -> Int {
  func countCumulative(day: Int, received: Int, cumulative: Int) -> Int {
    if (day == 0) {
      return cumulative
    } else {
      return countCumulative(day: day-1, received: (received / 2) * 3, cumulative: cumulative + (received / 2))
    }
  }

  return countCumulative(day: n, received: 5, cumulative: 0)
}
```

## 풀이
- 메소드 내부에 재귀함수 전용 메소드를 구현하였다.
- `countCumulative`는 날짜, 해당 날짜에 마케팅을 전달받은 인원, 마케팅 효과를 받은 총 인원수를 받아 날짜가 0이 될 때까지 자기 자신을 호출한다.
- 날짜가 0이 될 경우 마케팅 효과를 받은 총 인원 수를 리턴한다.
