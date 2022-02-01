# [Manasa and Stones](https://www.hackerrank.com/challenges/manasa-and-stones/problem?isFullScreen=true)
- 0부터 n개의 수를 가진 정수로 이루어진 배열이 있으며, 각 수들은 a 혹은 b의 간격을 가지고 있다. (0은 n에 포함되지 않는다.)
- a와 b의 간격을 가진 원소들의 개수가 n개인 배열이 나올 수 있는 모든 경우의 수를 구했을 때, 각 경우의 수 중에서 가장 큰 수들로 이루어진 배열을 구하라.
 
<img width="1061" alt="스크린샷 2022-02-01 오후 6 02 02" src="https://user-images.githubusercontent.com/59811450/151939819-8daf1e6f-1917-4fc1-94e1-04eb1efcbf9f.png">
<img width="1061" alt="스크린샷 2022-02-01 오후 6 02 15" src="https://user-images.githubusercontent.com/59811450/151939839-c47bc8ea-7825-44a6-90cb-93fc1e9d3692.png">

***

## 코드

```swift
func stones(n: Int, a: Int, b: Int) -> [Int] {
  guard a != b else { return [(n - 1) * a] }
  return stride(from: min((n - 1) * a, (n - 1) * b), through: max((n - 1) * a, (n - 1) * b), by: abs(a - b)).map{ Int($0) }
}
```

## 풀이
- 배열에서 가장 큰 수의 집단 내에서 가장 작은 수는 **a와 b 중 작은 수에서 n을 곱한 값**이다.
- 배열에서 가장 큰 수의 집단 내에서 가장 큰 수는 **a와 b 중 큰 수에서 n을 곱합 값**이다.
- 이 때 0은 배열의 개수에 포함하지 않으므로 (n-1) * a, (n-1) * b의 범위 안에서 답을 구할 수 있다.
- 나올 수 있는 가장 큰 수들의 서로간의 간격은 **a - b의 절댓값**이 되므로, 이를 구하여 리턴한다.
- 이 때, a와 b가 같은 경우에는 (n-1)에 a, b 중 아무 값이나 곱하여 리턴한다.  
