//: Playground - noun: a place where people can play

//import UIKit

var str = "Hello"
var number: Float = 70
var trust = true

let constantNumber: Int

number = 30
constantNumber = 100
print(number)
print(trust)
print(constantNumber)

var array: [Int]
array = [1,2,3,4,5]
array[2]

var arrayEmpty = [Int]()

var dictionary = ["Thailand": "Bangkok", "Loas": "Vientiane"]
var intDictionary = ["น้ำยาง": 20, "ยางแผ่น": 40, "😀": 0]
dictionary["Thailand"]
dictionary["Loas"]
dictionary["USA"]


intDictionary["น้ำยาง"]
intDictionary["😀"]

var ราคาน้ำมัน = 200
ราคาน้ำมัน


print(array)
print(dictionary)


array += [8, 10, 12]
dictionary["China"] = "Beijing"
print(dictionary)

array
array.removeAtIndex(3)
array

dictionary
dictionary.removeValueForKey("China")
dictionary

print("ราคาน้ำมันวันนี้ \(ราคาน้ำมัน)")
var สตริงราคาน้ำมัน = "ราคาน้ำมันวันนี้ \(ราคาน้ำมัน)"

var label = "Hello the date is "
var date = 17
label += String(date)




array
for var i = 0; i < 7; i++ {
    print(array[i])
}

for value in array {
    print(value)
}

dictionary
for (key, value) in dictionary {
    if key == "Thailand"{
        print(value)
    }
}

var i = 0
while i < 5 {
    i++
}

i = 0
var j = 0
repeat {
    i++
    j++
} while i < 5 && j < 3

for i in 0..<7 {
    print(i)
}

for i in 0...7 {
    print(i)
}




func คูณเลข(input: Int, กับเลข: Int) -> Int {
    return input * กับเลข
}

คูณเลข(5, กับเลข: 7)



func getPosition() -> (x: Int, y: Int) {
    return (y: 5, x: 6)
}
var position = getPosition()
position.x
position.1

func sum(arrayNumber: [Int]) -> Int {
    var result = 0
    for value in arrayNumber {
        result += value
    }
    return result
}
sum([1,2,3,4,5,6])

func รวม(numbers: Int...) -> Int {
    var result = 0
    for number in numbers {
        result += number
    }
    return result
}


รวม(1,2,3,4,5,6,7,8,4,49,3,342,234,5,67,8,0,0,3,32)


class Car {
    var wheel: Int
    var door: Int
    var color: String
    
    init(wheel: Int, door: Int) {
        self.wheel = wheel
        self.door = door
        color = "Blue"
    }
    
    init() {
        self.wheel = 4
        self.door = 4
        color = "Blue"
    }
    
    func getDescription() -> String {
        return "รถคันนี้มี \(wheel) ล้อ มี \(door) ประตู"
    }
}

var benz = Car()
benz.getDescription()
var สิบล้อ = Car(wheel: 10, door: 2)
สิบล้อ.getDescription()


class Benz: Car {
    var rearMirror: Int = 2
    
    override func getDescription() -> String {
        return "รถเบ้นคันนี้มี \(wheel) ล้อ มี \(door) ประตู สุดสวิงริงโก้"
    }
}

var benz2 = Benz()
benz2.door
benz2.rearMirror
benz2.getDescription()




enum Day: Int {
    case Monday = 1
    case Tuesday, Wednesday
    case Thursday, Friday, Saturday, Sunday
}

Day.Monday

Day(rawValue: 1)



var today = Day.Monday

switch today {
case .Monday, .Tuesday, .Wednesday, .Thursday, .Friday:
    print("weekday")
case .Saturday, .Sunday:
    print("weekend")
}


enum Response {
    case Success(code: Int, status: String)
    case Fail(code: Int, error:String)
}

var response = Response.Success(code: 200, status: "Success")
switch response {
case let .Success(code, status):
    print(code, status)
case let .Fail(code, error):
    print(code, error)
}



var cat: String
cat = "meaw"
//print(cat)


var maybeCat: String?
print(maybeCat)
maybeCat
maybeCat = "Pitsut"

maybeCat! += "hello"

if var haveCat = maybeCat {
    print(haveCat)
} else {
    print("no cat")
}

var dog: String?

print(dog ?? "sushi")








var idCardNumber = [1, 9, 9, 9, 9, 0, 0, 2, 8, 0, 5, 1, 2]

var sum = 0
for i=0; i < idCardNumber.count-1; i++ {
    sum += idCardNumber[i] * (13-i)
}

sum = sum % 11
11 - sum
var checkDigit = (11 - sum)%10

