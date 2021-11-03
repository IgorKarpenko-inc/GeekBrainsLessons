//
//  main.swift
//  GeekBrainsLessons
//
//  Created by Игорь Карпенко on 03.11.2021.
//

import Foundation

//1. Решить квадратное уравнение.

// ax^2 + bx + c = 0

var a: Double = 0
let b: Double = 12
let c: Double = 15

var x1: Double = 0
var x2: Double = 0
var D: Double = 0


if a == 0 {
    a = 1
}
 
D = b * b - 4 * a * c
 
if D > 0 {
    x1 = (-b + sqrt(D)) / (2 * a)
    x2 = (-b - sqrt(D)) / (2 * a)
    print("X1 = \(x1); X2 = \(x2)")
} else if D == 0 {
    x1 = (-b + sqrt(D)) / (2 * a)
    print("X1 = X2 = \(x1)")
} else {
    print("Корней нет")
}


//2. Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

let cathetOne: Double = 14
let cathetTwo: Double = 8

var areaOfTriangle = (cathetOne * cathetTwo) / 2
var hypotenuse = sqrt((cathetOne * cathetOne) + (cathetTwo * cathetTwo))
var perimeter = cathetOne + cathetTwo + hypotenuse

print("""

Площадь = \(areaOfTriangle)
Перимерт = \(perimeter)
Гиптенуза = \(hypotenuse)

""")

//3. * Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.

let deposit: Double = 30000
let percent: Double = 3.2

var result = ((deposit / 100) * percent) * 5

print(result)

print("Сумма вклада через 5 лет соствляет: \(result + deposit)")

