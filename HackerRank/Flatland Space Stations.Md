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
- 우선 도시의 개수와 정거장이 위치한 도시의 개수가 같을 경우 모든 도시에 정거장이 있다는 의미므로 0을 리턴한다.
- 만약, 정거장이 위치한 도시의 개수가 1개일 경우 정거장이 없는 가장 먼 도시와의 거리는 총 도시 개수 - 1이 되므로 n - 1을 리턴한다.
- 두 정거장 도시 사이에서 가장 먼 거리는 중간에 있는 도시이므로 **두 정거장의 거리 / 2**를 구하여 가장 먼 거리의 길이를 구한다. (= maxDistance)
- 만약, 마지막 정거장 도시의 위치가 가장 마지막 도시보다 앞에 있을 경우, 마지막 도시와 마지막 정거장 도시 사이의 거리는 **도시의 개수 - 마지막 정거장 도시의 위치 - 1**이 된다. (여기서 -1은 도시의 위치가 0부터 시작되므로 1부터 수량을 세는 도시와 개수와 맞춰주기 위함이다.) (= r)
- 만약, 첫번째 정거장 도시의 위치가 가장 첫 도시보다 뒤에 있을 경우, 첫 도시와 첫 정거장 도시 사이의 거리는 **첫 정거장 도시의 위치**가 된다. (= rm)
- maxDistance, r, rm 중 가장 큰 수를 리턴한다.
