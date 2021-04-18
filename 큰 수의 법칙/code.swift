let input = readLine()?.split(separator: " ").map{ Int(String($0))! }
let arr = readLine()?.split(separator: " ").map{ Int(String($0))! }

let M = input![1]
let K = input![2]

// 가장 큰 수와 두 번째로 큰 수 정렬
let sortedArr = arr!.sorted(by: >)[0...1]

// 반복해서 더해지는 수열 하나의 길이를 구한 후(M/(K+1)), 구한 수열 내에서 더해지는 큰 수의 횟수(M/(K+1)*K), 이를 제외한 나머지 큰 수의 더해지는 횟수(M%K+1)
let count: Int = M/(K+1)*K + M%(K+1)

var result = 0
result += sortedArr[0] * count
result += sortedArr[1] * (M-count)

print(result)
