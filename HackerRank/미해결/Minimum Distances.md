# [Minimum Distances](https://www.hackerrank.com/challenges/minimum-distances/problem?isFullScreen=true)
- 정수 배열 a가 주어졌을 때 배열 내 대칭되는 index에 위치한 Element들 중, 같은 값인 Element를 찾아 가장 서로 가까운 거리에 있는 Element들의 index 차이를 구하라.   
- 만약 대칭되는 같은 값의 Element가 없을 경우 -1을 리턴하라.
- ex) a = [3,2,1,2,3]일 경우 a[1] == a[3], a[0] == a[4], |1-3| = 2, |0-4| = 4이므로 return 값은 2가 된다.

<img width="1061" alt="스크린샷 2022-01-01 오후 11 44 50" src="https://user-images.githubusercontent.com/59811450/147853144-43d8526d-494a-4cca-b1c8-92c6787fe570.png">

***

## 코드

```swift
func minimumDistances(a: [Int]) -> Int {
  var result: Int = -1
  
  for i in stride(from: (a.count / 2) - 1, through: 0, by: -1) {
    if a[i] == a[a.count - (i + 1)] {
      result = a.count - (i + 1) - i
      break
    }
  }

  return result
}
```

## 풀이
- 배열의 중간부터 반복을 시작하기 위해 배열의 길이를 절반으로 나눈 뒤, 이를 역순으로 하여 반복문을 실행시킨다.
- 만약, 대칭되는 Element가 서로 대칭일 경우, 해당 Element가 가장 가까운 거리에 있는 같은 값의 Element이기 때문에 result에 index의 차이를 계산하여 담은 뒤 반복문을 종료한다.

***

## 미해결된 부분
- 배열의 개수가 짝수 및 홀수인 케이스, 대칭되는 같은 값의 Element가 없는 케이스를 모두 통과하나, 약 1000개 정도의 Element를 가진 배열이 주어지는 테스트 케이스에서 잘못된 값이 리턴됨.
