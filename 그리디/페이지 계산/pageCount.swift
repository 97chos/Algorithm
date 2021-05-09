func pageCount(n: Int, p: Int) -> Int {
  let array = Array(0...n)
  let pages = stride(from: 0, through: n, by: 2).map { Array(array[$0 ..< Swift.min($0 + 2, n+1)]) }
  let reversePages = pages.reversed()

  var cnt = 0
  var reverseCnt = 0

  for page in pages {
    guard !page.contains(p) else { break }
    cnt += 1
  }

  for page in reversePages {
    guard !page.contains(p) else { break }
    reverseCnt += 1
  }

  return min(cnt, reverseCnt)
}
