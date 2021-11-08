//
//  main.swift
//  GeekBrainsLessons
//
//  Created by Игорь Карпенко on 03.11.2021.
//


import Foundation


// 1. Написать функцию, которая определяет, четное число или нет.

var number = 193

func check () {
    let value = number % 2
    if value == 0 {
        print("Число \(number) чётное")
    } else {
        print("Число \(number) нечётное")
    }
}
check()


// 2. Написать функцию, которая определяет, делится ли число без остатка на 3.

var numb = 212

func checkForDiv () {
    let value = numb % 3
    if value == 0 {
        print("Чистло \(numb) делится на 3 без остатка")
    } else {
        print("Чистло \(numb) не делится на 3 без остатка")
    }
}

checkForDiv()


// 3. Создать возрастающий массив из 100 чисел.

var array = [Int] ()
var i = 0

while i<100 {
    array.append(i+1)
    i += 1
}
print(array)



// 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

for element in array where (element%2 == 0) || (element%3 == 0) {
    array.remove(at : (array.firstIndex(of: element)!))
}
print(array)



// 5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.

func fibonacci (n: Int) -> (Int) {
    if (n<3) {
        return 1
    } else {
        var z1 : Int = 1
        var z2 : Int = 1
        var z: Int

        for _ in 3...n {
            z = z1+z2
            z1 = z2
            z2 = z
        }
        return z2
    }
}

var fibArray = [Int]()
fibArray.append(0)
var n  = 50
for i in 1...n {
    fibArray.append(fibonacci(n: i))
}
print(fibArray)



// 6. * Заполнить массив из 100 элементов различными простыми числами.

func integerNumbers(pussNumbers: [Int]) -> [Int] {
    var p = pussNumbers
    var wholeNumbers = [Int]()
    
    while let n = p.first {
        wholeNumbers.append(n)
        p = p.filter { _ in 50 % n != 0 }
    }
    return wholeNumbers
}
print(integerNumbers(pussNumbers: Array(2...100)))
