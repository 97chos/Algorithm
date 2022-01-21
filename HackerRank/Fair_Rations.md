# [Fair Rations](https://www.hackerrank.com/challenges/fair-rations/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen)
- 정수 배열 B가 주어졌을 때, 각 모든 배열의 Element를 짝수로 만드려고 한다.
- 홀수를 짝수로 만드려고 1을 더하는 시점에서 대상 Element의 앞 혹은 뒤에 위치한 Element에도 1을 더해주어야 한다고 가정했을 때, 총 더해지는 수는 얼마인지 구하라. 

<img width="1060" alt="스크린샷 2022-01-21 오후 12 49 40" src="https://user-images.githubusercontent.com/59811450/150462473-7bfc9adf-9d84-4306-bf9a-768031e219a0.png">
<img width="1060" alt="스크린샷 2022-01-21 오후 12 50 02" src="https://user-images.githubusercontent.com/59811450/150462516-bd243c20-06fc-4470-93c2-b6526b85429c.png">

***

## 코드

```swift
func fairRations(B: [Int]) -> String {
  var people = B
  var breads = 0
  
  for i in 0..<people.count {
    if i > 0 {
      if people[i] % 2 != 0 && i != people.count - 1 {
        if people[i-1] % 2 != 0 {
          people[i-1] += 1
        } else {
          people[i+1] += 1
        }
        
        people[i] += 1
        breads += 2
      } else {
        continue
      }
    } else if i == people.count - 1 {
      if people[i] % 2 != 0 {
        people[i-1] += 1
        people[i] += 1
        breads += 2
      }
    } else {
      if people[i] % 2 != 0 {
        people[i+1] += 1
        people[i] += 1
        breads += 2
      }
    }
  }
  
  return people.filter{ $0 % 2 != 0 }.isEmpty ? "\(breads)" : "NO"
}
```

## 풀이
- 배열 B에 대한 반복문을 실행하여, 각 Element가 홀수인지 먼저 체크한다.
- Element가 홀수일 경우 앞, 뒤의 Element가 홀수인지 확인하고, 홀수인 현재 Element와 앞, 뒤 Element 중 홀수인 Element에 1을 더한 뒤, 결과 값에 추가한 값인 2를 더해준다.
- 반복문 종료 후, 홀수인 Element가 있을경우 "NO"를 리턴하고, 없을경우 총 더해준 값을 리턴한다.
