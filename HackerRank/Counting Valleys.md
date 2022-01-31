# [Counting Valleys](https://www.hackerrank.com/challenges/counting-valleys/problem?isFullScreen=true)
- 한 등산객이 계곡들을 하이킹하려 한다. 
- 건너는데 필요한 걸음 수 steps와 위 아래 방향을 의미하는 "U","D"로 이루어진 path가 주어졌을 때, 총 몇 번의 게곡을 넘는지 구하라.
- 단, 건너기 시작하는 위치보다 낮은 위치면 계곡이라고 가정한다.  

<img width="1056" alt="스크린샷 2022-01-31 오후 5 27 42" src="https://user-images.githubusercontent.com/59811450/151761188-a6623fc9-7e1d-4ba6-9b61-aa82c5664044.png">

***

## 코드

```swift
func countingValleys(steps: Int, path: String) -> Int {
  var valleyCount: Int = 0
  var current: Int = 0
  var inValley: Bool = false
  
  path.forEach { 
    switch $0 {
    case "U":
        current += 1
    case "D":
        current -= 1
    default:
      break
    }
    
    if !inValley && current < 0 {
      inValley = true
      valleyCount += 1
    } else if current >= 0 {
      inValley = false
    }
  }
  
  return valleyCount
}
```

## 풀이
- 현재 path가 D일 경우 current에 -1, U일 경우 +1을 한다.
- 만약 현재 계곡 안에 있지 않고 current가 0 이하인 경우 계곡 안에 들어온 것을 의미하므로 valleyCount를 +1하고, current가 0 이상인 경우에는 계곡을 빠져나온 것이므로 inValley를 true로 변경한다.
- path 반복문을 빠져나온 후 valleyCount를 리턴한다.
