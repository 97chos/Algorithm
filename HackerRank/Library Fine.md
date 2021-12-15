# [Library Fine](https://www.hackerrank.com/challenges/library-fine/problem?isFullScreen=true&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen)
- 도서 예정 반납일과 실제 반납일을 비교하여 벌금을 리턴하는 함수를 구하라.
- 실제 반납일의 연도가 예정 반납일의 연도보다 햇수로 1년 이상 늦어진 경우: 10,000 고정
- 실제 반납일의 월이 예정 반납일의 월보다 1개월 이상 늦어진 경우: 늦어진 개월수 * 500
- 실제 반납일의 일자가 예정 반납일의 일자보다 1일 이상 늦어진 경우: 늦어진 일수 * 15

<img width="1064" alt="스크린샷 2021-12-16 오전 1 37 07" src="https://user-images.githubusercontent.com/59811450/146226982-39287ccd-5fba-45a7-ae01-20117a735acb.png">

***

## 코드

```swift
func libraryFine(d1: Int, m1: Int, y1: Int, d2: Int, m2: Int, y2: Int) -> Int {
    if y1 > y2 {
      return 10000  
    } else if y1 < y2 {
       return 0
    } else {
        if m1 > m2 {
            return (m1 - m2) * 500
        } else if m1 < m2 {
            return 0
        } else {
            if d1 > d2 {
                return (d1 - d2) * 15
            } else {
                return 0
            }
        }
    }
}
```

## 풀이
- 연도, 월, 일의 순서대로 예정일과 반납일을 비교하는 조건문을 걸어 각 조건에 맞는 벌금을 return하도록 하였다.
