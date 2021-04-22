import Foundation

func solution(_ orders:[String], _ course:[Int]) -> [String] {

  // orders : 손님이 주문한 메뉴들
  // course : 주인이 만들고 싶어하는 코스 구성 단품 메뉴의 수량

  var menuSet: [String:Int] = [:]
  var result: [String] = []

  // 메뉴마다 나올수 있는 코스 조합
  func combination(origin: [Character], n: Int, resultString: String) {
    if resultString.count > 1 && course.contains(resultString.count) {
      if menuSet.keys.contains(resultString) {
        menuSet[resultString]! += 1
      } else {
        menuSet[resultString] = 1
      }
    }

    for i in n+1..<origin.count {
      combination(origin: origin, n: i, resultString: "\(resultString)\(origin[i])")
    }
  }

  // 메뉴 순회
  for order in orders {
    let menus: [Character] = order.sorted()
    for i in 0..<order.count {
      combination(origin: menus, n: i, resultString: "\(menus[i])")
    }
  }

  // 가장 많은 코스 찾기
  for n in course {
    let max = menuSet.filter{ $0.key.count == n && $0.value > 1 }.max { $0.value < $1.value }

    if let max = max {
      menuSet.filter{ $0.key.count == n}.forEach {
        if $0.value == max.value {
          result.append($0.key)
        }
      }
    }
  }

  return result.sorted()
}
