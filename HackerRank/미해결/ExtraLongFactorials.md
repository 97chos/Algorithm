# ExtraLongFactorials
- 정수 n이 주어졌을 때, n의 팩토리얼 값을 구한다.

<img width="1048" alt="스크린샷 2021-12-09 오후 5 07 36" src="https://user-images.githubusercontent.com/59811450/145358055-337bb47d-4ffe-465d-b74f-065c3bd11d10.png">

***

## 코드

```swift
func extraLongFactorials(n: Int) -> Void {
    var factorial = (1...n).map{Double($0)}.reduce(1.0, *)
    
    print(NSDecimalNumber(value: factorial))
}
```

## 풀이
- 1~n의 sequence를 생성한 후, reduce를 이용하여 초기값 1.0부터 곱해준다.
- Int형으로는 범위에 대한 제약이 있어 큰 수의 계산이 불가능하므로, 그보다 더 큰 범위를 가진 Double로 변환하여 게산한다.
- 결과값이 커지면 부동소수점 e로 값이 도출되므로, NSDesimalNumber()를 이용하여 값을 출력한다.

## 미해결된 부분
- 1 ~ !22까지는 값이 정확하게 계산되나, !23부터 값이 다르게 나온다.
