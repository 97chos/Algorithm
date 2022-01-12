# [Flatland Space Stations](https://www.hackerrank.com/challenges/flatland-space-stations/problem?isFullScreen=true&h_r=next-challenge&h_v=zen)
- 모든 도시 개수 n과 정거장이 위치한 도시 위치를 나타내는 정수 배열 c가 주어졌을 때, 정거장이 없는 도시와 정거장이 있는 도시 사이의 가장 먼 거리를 구하라.

<img width="1057" alt="스크린샷 2022-01-13 오전 4 12 48" src="https://user-images.githubusercontent.com/59811450/149206378-f1e7160c-7064-409d-9128-c73631c28d24.png">
<img width="1057" alt="스크린샷 2022-01-13 오전 4 13 05" src="https://user-images.githubusercontent.com/59811450/149206422-761bd5d2-2316-4e06-9ff7-989411f6340b.png">

***

## 코드

```swift
func flatlandSpaceStations(n: Int, c: [Int]) -> Int {
  if n == c.count { return 0 }
  if c.count == 1 { return n - 1 }
  
  var maxDistance = 0
  let stations = c.sorted()
  
  for i in 0..<stations.count - 1 {
    let distance = stations[i + 1] - stations[i]
  
    if (distance / 2) > maxDistance {
      maxDistance = distance / 2
    }
  }
  
  let lastStation = stations[stations.count - 1]
  let r = n > lastStation ? (n - lastStation) - 1 : 0
  
  let firstStation = stations[0]
  let rm = 0 < firstStation ? firstStation : 0
  
  return max(r, rm, maxDistance)
}

```

## 풀이
- 
