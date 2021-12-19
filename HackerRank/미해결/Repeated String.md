# [Repeated String](https://www.hackerrank.com/challenges/repeated-string/problem?isFullScreen=true)
- 문자열 s와 정수 n이 주어졌을 때, n자리 수까지 s를 반복 나열한 문자열에서 s의 첫번째 문자의 개수를 구하라.
- ex) s = abc, n = 10일 때, abcabcabca에서 a의 개수는 4이므로 4가 리턴된다.

<img width="1034" alt="스크린샷 2021-12-19 오후 3 02 29" src="https://user-images.githubusercontent.com/59811450/146665693-62d12f22-9fa6-4440-b48a-d5c92e804cb6.png">
<img width="1062" alt="스크린샷 2021-12-19 오후 3 02 52" src="https://user-images.githubusercontent.com/59811450/146665702-6c324301-4e14-4524-84d4-34273a8606c4.png">

***

## 코드

```swift
func repeatedString(s: String, n: Int) -> Int {
  var indexCount: Int = 0
  var result = 0
  let startIndex = s.startIndex

  for char in s {
    if char == s[startIndex] {
      indexCount += 1
    }
  }

  let repeats = (n / s.count) * indexCount
  let remain = n % s.count
  var remainString = ""

  if remain == 0 {
    return repeats
  } else {
    remainString = String(s[...s.index(startIndex, offsetBy: remain-1)])

    for char in remainString {
       if char == s[startIndex] {
         result += 1
       }
     }
     
     return repeats + result
   }
}
```

## 풀이
- 주어진 문자열 내에서 첫 번째 문자의 개수가 총 몇 개인지 구한다.
- **반복되는 s 문자열에서 첫 번째 문자의 개수 = n자리까지 문자열 s가 반복되는 횟수 * s문자열에서 첫 번째 문자의 개수**
- **남은 문자열의 수 = n을 s의 길이로 나눈 나머지**, 만약 남은 문자열의 수가 0이라면 repeats만 리턴한다.
- 남은 문자열의 수가 0이 아닐 경우, 남은 문자열을 구하고 해당 문자열에서 첫 번째 문자가 포함된 경우 result에 1을 더한다.
- 최종적으로 repeats + result를 리턴한다.

***

## 미해결된 부분
- 공개된 테스트 케이스는 모두 통과되나 비공개 테스트 케이스 중 s = "ceebbcb", n = 817723 일 때 리턴되는 값이 0인 테스트 케이스가 있는데, 리턴 값이 0인 경우를 이해하지 못함.
