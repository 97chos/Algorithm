# [ACM ICPC Team](https://www.hackerrank.com/challenges/acm-icpc-team/problem?isFullScreen=true)
- 같은 길이의 이진법 문자열들로 이루어진 배열 topic이 주어졌을 때, 배열 내에서 문자열 2개를 뽑아 문자열의 각 자리를 비교한다. 
- 이때, 문자열끼리 논리합 연산하여 나온 결과값에서 1이 포함된 횟수를 구하고, 가장 많이 포함된 문자열의 쌍과 1의 횟수를 구하라.  

<img width="1064" alt="스크린샷 2021-12-21 오후 11 55 48" src="https://user-images.githubusercontent.com/59811450/146950499-77e34d75-3ba4-4988-8bda-373b8848ff9b.png">
<img width="1064" alt="스크린샷 2021-12-21 오후 11 56 33" src="https://user-images.githubusercontent.com/59811450/146950619-8eb70609-e12a-4aaf-9e84-0342b0b30add.png">

***

## 코드

```swift
func acmTeam(topic: [String]) -> [Int] {
  var result: [Int] = [0,0]

  for i in 0..<topic.count - 1 {
    for j in i + 1..<topic.count {
      var count = 0
      for (topic1, topic2) in zip(topic[i], topic[j]) {
        if topic1 == "1" || topic2 == "1" {
          count += 1
        }
      }

      if result[0] < count {
        result[0] = count
        result[1] = 1
      } else if result[0] == count {
        result[1] += 1
      }
    }
  }

  return result
}
```

## 풀이
- 이중 For문을 통해 배열의 문자열들끼리 비교한다.
- 두 문자열을 zip 처리하여, 각 문자열의 문자 중 1이 하나라도 있는 경우 count를 증가한다.
- 문자 비교 반복문 종료 후 count가 result[0]\(현재까지 가장 많은 1의 갯수)보다 클 경우, result[0]에 count를 저장하고 result[1]\(최대 1의 개수를 갖는 문자열쌍의 개수)에 1을 넣는다.
- 만약 result[0]과 count가 동일할 경우, result[1]에 1을 추가하여 문자열쌍의 개수를 증가시킨다.  

***

## 미해결된 부분
- 공개된 테스트 케이스는 모두 통과되나, 비공개 케이스 중 몇몇 케이스에서 타임오버 발생
