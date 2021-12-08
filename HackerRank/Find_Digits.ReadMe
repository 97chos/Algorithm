# Find Digits
- 정수 n이 주어졌을 때, 각 자릿수 중 n의 약수인 수의 갯수를 구한다.

<img width="844" alt="스크린샷 2021-12-09 오전 2 14 35" src="https://user-images.githubusercontent.com/59811450/145253271-93b42cbe-4178-4702-9fff-33178f61932c.png">

```swift
func findDigits(n: Int) -> Int {
    var result = 0
    var varN = n
    
    while(varN > 0) {
        if !(varN % 10 == 0) && (n % (varN % 10) == 0) {
            result += 1
        }
        varN /= 10
    }
    
    return result
}
```

***
## 풀이
- 입력받은 정수 n을 복사한 varN과 리턴할 결과값 result 변수를 생성한다.
- varN이 0이 될 때까지 아래 명령문을 반복한다.
- 현재 비교하는 정수의 마지막 자릿수가 0이 아니고, n을 마지막 자릿수로 나누었을 때 0으로 떨어지는 경우 result에 1을 더한다.
- 조건문이 종료되면 varN을 10으로 나눈 뒤, 다음 자릿수를 비교할 수 있도록 반복문의 처음으로 돌아간다.
- varN이 0 이하가 되면 반복문을 종료하고 result를 리턴한다.
