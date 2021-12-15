# [Cut the sticks](https://www.hackerrank.com/challenges/cut-the-sticks/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen)
- 막대의 길이로 이루어진 정수 배열이 주어졌을 때, 가장 짧은 막대의 길이를 기준으로 스틱들을 자르려고 한다.
- 이때, 기준이 되는 짧은 막대의 길이와 자르려고 했던 막대의 길이가 같을 경우, 자르려고 했던 막대는 버린다.
- 한 번 막대를 자를 때마다 자르기 전의 막대 개수를 세어 이를 배열로 리턴한다고 할 때, 이를 구하는 함수를 작성하라.

<img width="1060" alt="스크린샷 2021-12-16 오전 2 19 10" src="https://user-images.githubusercontent.com/59811450/146233950-5c31c740-0844-46ca-81e7-47eff24f35aa.png">
<img width="1060" alt="스크린샷 2021-12-16 오전 2 19 32" src="https://user-images.githubusercontent.com/59811450/146234018-caf5daa2-b519-40ca-82c1-d2947bb931d7.png">

***

## 코드

```swift
func cutTheSticks(arr: [Int]) -> [Int] {
  var sortedArr = arr.sorted()
  var returnArr: [Int] = []

  while !sortedArr.isEmpty {
    returnArr.append(sortedArr.count)
    let minNum = sortedArr[0]
    sortedArr = sortedArr.map{ $0 - minNum }.filter({ $0 != 0 })
  }

  return returnArr
}
```

## 풀이
- 주어진 막대 배열을 길이가 짧은 순으로 정렬하기 위해 sorted() 처리하여 sortedArr이라는 새로운 변수에 담았다.
- 배열 내에서 가장 짧은 막대의 길이(배열의 첫번째 Element)로 배열 내의 모든 막대 길이를 빼면 기준이 된 막대와 같은 길이의 막대는 버려지므로 이를 0으로 처리하고, sortedArr을 filter를 통해 0이 아닌 Element로 이루어진 배열로 다시 재정의한다. 
- 막대를 자르기 전 sortedArr의 count를 returnArr에 추가한다.
- 위 공식을 sortedArr이 empty가 될 때까지 계속해서 반복한다. (while문은 true일 때 동작하므로 앞에 !를 붙여주어 실제 isEmpty일 때 false가 되어 반복문을 빠져나오도록 한다.)
- 반복문을 빠져나온 후 returnArr을 return한다.
