func stringZipper(_ s: String) -> Int {
  // 문자열의 길이
  var result = s.count

  // 최소로 축약할 수 있는 값
  let length = s.count / 2

  // 만약 문자열의 길이가 2 이하일 경우 더 이상 축약할 수 없으므로 해당 값을 그대로 리턴
  if s.count <= 2 { return s.count }

  for idx in 1...length {
    // cnt = 반복된 문자열의 횟수 카운트
    var cnt = 1
    // 반복문을 수행하는 동안 문자열을 잘라낼 것이므로 변수에 대입
    var copyS = s
    // 현재 문자열과 비교할 이전 문자열 값
    var currentCut = ""
    // 축약된 최종 문자열
    var resultCut = ""

    // idx개씩 묶으려는데, 문자열의 길이보다 묶으려는 갯수가 크면 안되므로 조건문 걸어두기
    while copyS.count >= idx {
      // copyS의 시작점부터 idx만큼까지 자를 범위 생성
      let range = s.startIndex..<s.index(s.startIndex, offsetBy: idx)
      let cutStr = copyS[range]

      // 만약 처음 실행할 경우 currentCut에 자른 문자열 대입
      if currentCut == "" {
        currentCut = String(cutStr)

      // 이전에 자른 문자열과 현재 자른 문자열이 같을 경우 cnt 증가
      } else if currentCut == String(cutStr) {
        cnt += 1
      // 이전에 자른 문자열과 현재 자른 문자열이 다를 경우
      } else {
        // cnt가 1일 경우 반복되는 문자열이 없으므로 최종 문자열에 현재 문자열 추가
        if cnt == 1 {
          resultCut.append("\(cutStr)")
        // cnt가 2 이상일 경우 반복되는 횟수 + 현재 문자열 추가
        } else {
          resultCut.append("\(cnt)\(cutStr)")
        }
        // 최종 문자열에 현재 문자열 추가 후 cnt 및 비교할 이전 문자열 현재 자른 문자열로 초기화
        cnt = 1
        currentCut = String(cutStr)
      }

      // 현재 자른 문자열의 범위까지 삭제
      copyS.removeFirst(idx)
    }

    // copyS의 문자열 길이가 idx보다 짧아져 반복문을 탈출했을 때
    // cnt가 1일 경우 지금까지 저장된 문자열에 현재 남은 문자열 + 뒤에 압축 불가능한 잉여 문자열 추가
    if cnt == 1 {
      resultCut.append("\(currentCut)\(copyS)")
    // cnt가 2일 경우 지금까지 저장된 문자열에 cnt + 현재 반복된 남은 문자열 + 뒤에 압축 불가능한 잉여 문자열 추가
    } else {
      resultCut.append("\(cnt)\(currentCut)\(copyS)")
    }

    // 만약 현재 최종 압축 문자열 값이 최소값일 경우 result값 갱신
    if resultCut.count < result { result = resultCut.count}
  }

  return result
}
