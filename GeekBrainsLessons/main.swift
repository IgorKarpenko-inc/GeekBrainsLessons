import Foundation


enum EngineStatus {
    case on
    case off
}

enum WindowsStatus {
    case up
    case down
}

struct SportCar {
    let brand: String
    let model: String
    let year: Int
    let mileage: Int
}

struct Truck {
    let brand: String
    let model: String
    let year: Int
    let mileage: Int
    let trunkSize: Int
    var trunkFilled: Int {
        willSet {
            newValue <= trunkSize ? print("\(newValue) кг закружено в кузов") : print("Превышен допустимый объём груза")
        }
    }
    
    var engineStatus: EngineStatus {
        willSet {
            newValue == .on ? print("Двигателья автомобиля \(brand) запущен ") : print("Двигатель \(brand) заглушен")
        }
    }
    
    var windowsStatus: WindowsStatus {
        willSet {
            newValue == .down ? print("Окна \(brand) открыты") : print("Окна \(brand) закрыты")
        }
    }
}

let carOne = SportCar(brand: "Tesla", model: "Model X", year: 2018, mileage: 25)
let carTwo = SportCar(brand: "KIA", model: "CEED", year: 2015, mileage: 129000)
var carThree = Truck(brand: "Ford", model: "Transit", year: 2020, mileage: 965, trunkSize: 1500, trunkFilled: 800, engineStatus: .on, windowsStatus: .up)

carThree.windowsStatus = .up



print("""


    Автомобиль: \(carOne.brand) \(carOne.model)
    Год выпска: \(carOne.year) г
    Текущий пробег: \(carOne.mileage) км


    Автомобиль: \(carTwo.brand) \(carTwo.model)
    Год выпска: \(carTwo.year) г
    Текущий пробег: \(carTwo.mileage) км
      

    Автомобиль: \(carThree.brand) \(carThree.model)
    Год выпска: \(carThree.year) г
    Текущий пробег: \(carThree.mileage) км
    Объём кузова: \(carThree.trunkSize) л
    Кузов заполнен на: \(carThree.trunkFilled) л

      
""")





