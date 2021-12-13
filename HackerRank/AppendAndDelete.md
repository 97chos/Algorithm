# [Append And Delete](https://www.hackerrank.com/challenges/append-and-delete/problem?isFullScreen=true)
- 영소문자로 구성된 문자열 s와 t, 정수 k가 주어졌다.
- 문자열 s와 t는 한 번마다 맨 마지막 영소문자를 삭제하거나 추가할 수 있다.
- k번의 기회를 모두 소진하여 문자열 s를 t로 변환하고자 할 때, 주어진 횟수에 맞게 t로 성공적으로 변환할 수 있으면 "Yes"를, 할 수 없으면 "No"를 리턴하라. 

<img width="1063" alt="스크린샷 2021-12-14 오전 3 09 58" src="https://user-images.githubusercontent.com/59811450/145865541-fa4a7430-7150-4cd7-a98a-c67404d59594.png">
<img width="1063" alt="스크린샷 2021-12-14 오전 3 10 13" src="https://user-images.githubusercontent.com/59811450/145865574-86863192-e2a9-46c1-998c-12fea8dd1828.png">

***

## 코드

```swift
func appendAndDelete(s: String, t: String, k: Int) -> String {
  if s == t && k % 2 == 0 {
    return "yes"
  }

  let minString = s.count > t.count ? t : s
  let maxString = s.count > t.count ? s : t
  var idx = 0

  if (maxString.count - minString.count) % 2 == 1 && k % 2 == 0 {
    return "No"
  }

  while (minString.count > idx && (s[s.index(s.startIndex, offsetBy: idx)] == t[t.index(t.startIndex, offsetBy: idx)])) {
    idx += 1
  }

  if (maxString.count - idx) + (minString.count - idx) <= k {
    return "Yes"
  } else {
    return "No"
  }
}
```

## 풀이
- 우선 s와 t가 같고, k가 짝수인 경우 Yes를 리턴한다. k가 짝수인 조건을 넣은 이유는 s와 t가 같아도 홀수인 횟수를 모두 소진했을 때, s를 t로 만들 수 없기 때문이다.  
```ex) s = "sss", t = "sss", k = 1 일 때, 무조건 한 번은 s 문자열이 바뀌어야하므로 s는 t와 같아질 수 없으며, 변경된 후 다시 돌아와야 하기 때문에 짝수 조건에서만 Yes를 리턴한다.```
- 짧은 문자열과 긴 문자열, 문자열들의 index와 연속된 같은 문자의 개수를 의미하는 변수 idx를 선언한다.
- 긴 문자열과 짧은 문자열의 차이가 홀수이고, k가 짝수인 경우 No를 리턴한다.
```ex) s = "y", t = "yu", k = 2인 경우```
- idx가 짧은 문자열의 index를 넘지 않고, s와 t 문자열의 idx번 째 문자가 서로 다를 때까지 idx에 1을 더한다.
- **변경되어야 할 문자의 개수 = 전체 문자열의 개수 - 연속된 같은 문자열의 개수**이므로, 변경되어야 할 문자열의 개수가 t보다 같거나 적은 경우 Yes를, 아닌 경우에는 No를 리턴한다. 
