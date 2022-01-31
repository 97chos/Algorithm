# [Save the Prisoner!](https://www.hackerrank.com/challenges/save-the-prisoner/problem?isFullScreen=true)
- m명의 죄수들에게 n개의 사탕을 나누어 주려고 한다.
- 죄수들이 차례대로 앉아있는 상태에서 s번 째 죄수부터 사탕을 나누어 준다고 가정했을 때, 마지막 사탕을 받게될 죄수는 몇 번째로 앉은 죄수인지 구하라.
 
<img width="1060" alt="스크린샷 2022-01-31 오후 9 18 38" src="https://user-images.githubusercontent.com/59811450/151792697-954c08c0-18e8-4626-8bd5-aae30b88bdd8.png">
<img width="1060" alt="스크린샷 2022-01-31 오후 9 18 57" src="https://user-images.githubusercontent.com/59811450/151792747-8f055665-da0e-4f2b-93c3-7585bd8adb95.png">

***

## 코드

```swift
func saveThePrisoner(n: Int, m: Int, s: Int) -> Int {
    let result = (m % n + (s - 1) % n) % n
    
    return result == 0 ? n : result
}
```

## 풀이
- 간식 수를 죄수들의 인원수로 나눈 수를 구한다. (m % n)
- 위에서 구한 수에 배분을 시작한 좌석 수를 더한다 (s - 1 % n)
- 좌석 수까지 더한 수가 인원 수를 넘은 케이스에 대응하기 위하여 인원수로 한 번 더 나눠준다. ((...) % n)
- 위 계산까지 마친 후 0이 나왔을 경우 인원 수를 리턴하고, 아닐 경우 계산한 수를 리턴한다.
