# [Day Of Programmer](https://www.hackerrank.com/challenges/day-of-the-programmer/problem?isFullScreen=true&h_r=next-challenge&h_v=zen)
- 연도를 의미하는 정수 n이 주어졌을 때, 율리우스력과 그레고리력의 윤년을 고려하여 해당 연도의 256번째 날짜를 구하라.

<img width="1064" alt="스크린샷 2021-12-10 오후 4 45 55" src="https://user-images.githubusercontent.com/59811450/145536558-0b49a8e8-170f-433f-adae-b140486595a7.png">
<img width="1064" alt="스크린샷 2021-12-10 오후 4 57 42" src="https://user-images.githubusercontent.com/59811450/145538050-9aea8880-fcd6-4dea-856b-a3b6baf6f7fc.png">

***

## 코드

```swift
func dayOfProgrammer(year: Int) -> String {
  // 그레고리력, 율리우스력의 윤년인 경우
  if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 || (year < 1918 && year % 4 == 0) {
    return "12.09.\(year)"
  // 율리우스력 -> 그레고리력으로 전환된 연도인 1918인 경우
  } else if year == 1918 {
    return "26.09.\(year)"
  // 윤년이 아닌 경우
  } else {
    return "13.09.\(year)"
  }
}
```

## 풀이
- 정답은 어차피 3가지로 나누어지므로, 입력받은 연도가 윤년인지 아닌지, 율리우스력에서 그레고리력으로 전환된 특정한 연도인지만 파악하여 고정된 결과값을 리턴한다.

***

## 다른 풀이
- 고정된 날짜 값을 리턴하는 것이 아닌, 직접 날짜를 계산하여 리턴하는 방법도 있다.

```swift
func dayOfProgrammer(year: Int) -> String {
    // Write your code here

  let months: [Int] = [31,28,31,30,31,30,31,31,30,31,30,31]
  let leapMonths: [Int] = [31,29,31,30,31,30,31,31,30,31,30,31]
  var day = 256
  var month = 0

  // 그레고리력, 율리우스력의 윤년인 경우
  if (year % 4 == 0 && year % 100 != 0) || year % 400 == 0 || (year < 1918 && year % 4 == 0) {
    while(day > leapMonths[month]) {
      day -= leapMonths[month]
      month += 1
    }

    return "\(day).0\(month + 1).\(year)"
  // 율리우스력 -> 그레고리력으로 전환된 연도인 1918인 경우
  } else if year == 1918 {
    while(day > months[month]) {
      day -= months[month]
      month += 1
    }

    return "\(day + 13).0\(month + 1).\(year)"
  // 윤년이 아닌 경우
  } else {
    while(day > months[month]) {
      day -= months[month]
      month += 1
    }

    return "\(day).0\(month + 1).\(year)"
  }
}
```

- 단, 위 코드를 해커랭크에서 실행하면 타임아웃이 발생한다.
