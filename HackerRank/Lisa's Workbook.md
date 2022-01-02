# [Lisa's Workbook](https://www.hackerrank.com/challenges/lisa-workbook/problem?isFullScreen=true)
- 정수 n, k, 정수 배열 arr이 주어졌을 때, 아래 조건을 만족하여 페이지 번호와 문제 번호가 같아지는 경우의 수를 구하라.
- 각 챕터의 문제 번호는 1부터 arr[n]까지이다.
- n+1 챕터는 arr[n]의 문제 개수를 갖는다.
- 한 페이지가 가질 수 있는 문제 개수는 최대 k개 이다.
- 페이지는 1부터 시작하며, 한 페이지 당 한 챕터만을 갖는다. (즉, 챕터가 끝나면 새로운 페이지에 챕터를 할당받는다.)

<img width="1070" alt="스크린샷 2022-01-03 오전 12 14 46" src="https://user-images.githubusercontent.com/59811450/147880225-54cee519-8e55-4ae6-ac81-a376454e8a7a.png">
<img width="1070" alt="스크린샷 2022-01-03 오전 12 15 08" src="https://user-images.githubusercontent.com/59811450/147880232-e0ef4fe7-6254-4008-89b6-c573cf75ee97.png">

***

## 코드

```swift
func workbook(n: Int, k: Int, arr: [Int]) -> Int {
  var page = 1
  var result = 0
  
  for i in 0..<arr.count {
    for j in 1...arr[i] {
      if j == page {
        result += 1
      }
      if j % k == 0 {
        page += 1
      }
    }
    if arr[i] % k != 0 {
      page += 1
    }
  }
  
  return result
}
```

## 풀이
- 문제 번호 1부터 각 챕터가 갖는 문제 수까지 반복문을 실행한다.
- 만약 문제 번호가 현재 페이지와 같을 경우 result에 1을 더한다.
- 만약 문제 번호가 k의 배수인 경우, 다음 page로 넘어간다.
- 반복문 종료 후 현재 page의 문제 수가 k만큼 채워지지 않았을 경우, 다음 page로 넘어가 다음 챕터로 페이지를 시작한다.

## 시도한 풀이
- 처음에는 각 챕터 당 문제 개수를 k로 나누어 챕터별로 요구하는 페이지를 계산하여 조건문을 이용해 풀고자 하였으나, *1. 문제 번호 반복, 2. 현재 페이지에 대한 반복, 3. 각 챕터 당 필요한 페이지 수에 대한 반복* 총 세번의 반복문이 필요하여 시간 복잡도가 늘어날 것으로 판단, 다른 방법으로 우회하였다.
