# [Birthday](https://www.hackerrank.com/challenges/the-birthday-bar/problem?isFullScreen=true)
- 정수 배열 s와 정수 d,m이 주어졌을 때, s배열 내에서 m만큼 연속되는 Element들의 합이 d와 같아지는 경우의 수를 구하라.

<img width="1037" alt="스크린샷 2021-12-09 오후 6 54 09" src="https://user-images.githubusercontent.com/59811450/145374169-e2df5c6f-e6f4-4418-98df-ec2cd9f2ea94.png">
<img width="1037" alt="스크린샷 2021-12-09 오후 6 54 45" src="https://user-images.githubusercontent.com/59811450/145374287-119f71e3-1043-482a-a44c-1248d09e19ec.png">

***

## 코드

```swift
func birthday(s: [Int], d: Int, m: Int) -> Int {
  var idx = 0
  var result = 0

  while (s.count >= idx + m ) {
    if s[idx ..< idx + m].reduce(0, +) == d {
      result += 1
    }
    idx += 1
  }

  return result
}
```

## 풀이
- **배열 s의 index 값을 의미하는 idx 변수**와 **m만큼 연속된 수의 총합이 d와 같아지는 경우의 수를 의미하는 result 변수**를 생성한다.
- **index 값을 의미하는 idx + m**이 **배열 s의 크기보다 커질 때까지** 아래 명령문을 반복 실행한다.
- 만약 배열 s[idx ..< idx + m]의 총합이 d와 같을 경우 result에 1을 더한다. 
- 조건문이 종료되면 idx 값에 1을 더하고 반복문의 조건절로 되돌아간다.
- idx + m이 배열 s의 크기보다 커지면 반복문을 종료하고 result를 리턴한다.
