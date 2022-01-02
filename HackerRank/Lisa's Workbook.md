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
      print(page, j)
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
- 1부터 

## 다른 풀이
- if문을 풀어서 쓴 코드 풀이

```swift
func taumBday(b: Int, w: Int, bc: Int, wc: Int, z: Int) -> Int {
  var minCost = 0
  var changeTo = 0
  let totalCount = b + w
  let originCost = (b * bc) + (w * wc)

  if bc <= wc {
    minCost = bc
    changeTo = w
  } else {
    minCost = wc
    changeTo = b
  }

  let result = (totalCount * minCost) + (changeTo * z)

  return result < originCost ? result : originCost
}
```
