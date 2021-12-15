# [Sherlock and Squares](https://www.hackerrank.com/challenges/sherlock-and-squares/problem?isFullScreen=true&h_r=next-challenge&h_v=zen)
- 정수 a와 b가 주어졌을 때, a와 b 사이의 값 중 정수를 제곱하여 생기는 수의 개수를 구하라. 

<img width="1070" alt="스크린샷 2021-12-16 오전 12 07 59" src="https://user-images.githubusercontent.com/59811450/146211610-0b8f1af3-236f-452e-b6d3-afd3d37bec4a.png">

***

## 코드

```swift
func squares(a: Int, b: Int) -> Int {  
  if Int(ceil(sqrt(Double(a)))) > Int(floor(sqrt(Double(b)))) {
      return 0
  }
  
 return Array(Int(ceil(sqrt(Double(a))))...Int(floor(sqrt(Double(b))))).count
}

```

## 풀이
- **sqrt():** Double의 제곱근을 구한다.
- **ceil():** 소수점을 올림 처리한다.
- **floor():** 소수점을 내림 처리한다. 
- 만약 a의 제곱근에서 올림한 수가 b의 제곱근에서 내림한 수보다 크다면 0을 리턴한다. ```ex) a = 5, b = 8인 경우``` 
- a의 제곱근에서 올림한 수와 b의 제곱근에서 내림한 수 사이의 값들이 제곱근의 개수이므로, 해당 범위를 배열로 만들어 Element의 개수를 구한다.
