func possibleChanges(usernames: [String]) -> [String] {
  // 각 이름별로 이름 변경 여부를 리턴할 값을 담는 배열
  var result: [String] = []

  // 각 이름별 순환
  for name in usernames {
    // (알파벳, 아스키코드)를 담을 튜플 배열
    var asciis: [(String, UInt8)] = []

    // 이름의 알파벳 순환
    for alphabet in name {
      // 튜플 배열에 알파벳과 아스키코드 담기
      asciis.append((String(alphabet),alphabet.asciiValue!))
    }

    // 튜플 배열을 아스키코드 오름차순으로 정렬 후, 이를 알파벳만 따로 분리하여 String 형태로 join하기
    let resultString = asciis.sorted { $0.1 < $1.1 }.map{ $0.0 }.joined()

    // 아스키코드 기준으로 정렬된 문자열이 처음 이름과 같다면 변경할 수 없는 것이므로 No
    if name == resultString {
      result.append("No")
    } else {
      // 처음 이름과 다르다면 변경할 수 있으므로 Yes
      result.append("Yes")
    }
  }

  return result
}
