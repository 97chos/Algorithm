# [Chocolate Feast](https://www.hackerrank.com/challenges/chocolate-feast/problem?isFullScreen=true)
- 정수 n원으로 정수 c원의 초콜렛을 구매하려고 한다.
- 초콜렛은 정수 m개의 초콜렛 포장지를 모아 1개의 초콜렛으로 교환할 수 있다.
- 정수 n원으로 얻을 수 있는 초콜렛의 개수를 구하라.

<img width="1061" alt="스크린샷 2022-01-02 오후 8 08 36" src="https://user-images.githubusercontent.com/59811450/147873864-d10cc89d-eb31-4dc3-9aa9-0d17e4968357.png">
<img width="1061" alt="스크린샷 2022-01-02 오후 8 09 10" src="https://user-images.githubusercontent.com/59811450/147873878-04961918-a26e-4d2f-b317-285bd410ccfb.png">

***

## 코드

```swift
func chocolateFeast(n: Int, c: Int, m: Int) -> Int {
  var wrapperCount = n / c
  var result = wrapperCount
  
  while wrapperCount >= m {
    result += (wrapperCount / m)
    wrapperCount = (wrapperCount / m) + (wrapperCount % m)
  }
  
  return result
}
```

## 풀이
- 현재 갖고있는 금액으로 구할 수 있는 초콜렛을 우선적으로 구한다.
- **갖고 있는 포장지 = 포장지를 초콜렛으로 교환한 개수 + 기존에 갖고 있던 포장지의 개수**이므로, 남은 포장지의 수가 초콜렛으로 교환가능한 포장지의 수(m)보다 적어질 때까지 반복문을 실행한다.

