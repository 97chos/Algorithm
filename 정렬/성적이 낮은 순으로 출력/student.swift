let num = Int(readLine()!)!
var students: [(String, Int)] = []

for _ in 0..<num {
  let student = readLine()!.split(separator: " ")
  students.append((String(student[0]), Int(String(student[1]))!))
}

let array = students.sorted{ $0.1 > $1.1 }.map{ $0.0 }

print(array)
