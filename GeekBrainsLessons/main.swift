
import Foundation


enum SportMode {
    case on
    case of
}

enum Trailer {
    case isPresent
    case isAbsent
}

enum Trunk {
    case volumeOne
    case volumeTwo
    case volumeThree
    case voumeFour
    case volumeFive
}


class Car {
    var mark: String
    var year: Int
    var trunkVolume: Trunk {
        willSet {
            switch newValue {
            case .volumeOne: print("Объём багажника \(mark) заполнен на 10%")
            case .volumeTwo: print( "Объём багажника \(mark) заполнен на 30%")
            case .volumeThree: print( "Объём багажника \(mark) заполнен на 50%")
            case .voumeFour: print("Объём багажника \(mark) заполнен на 80%")
            case .volumeFive: print("Объём багажника \(mark) заполнен на 100%")
            }
        }
    }
    
    init (mark: String, year: Int, trunkVolume: Trunk) {
        self.mark = mark
        self.year = year
        self.trunkVolume = trunkVolume
    }
}

class TruckCar: Car {
    var luggage: Trailer
    init(mark: String, year: Int, trunkVolume: Trunk, luggage: Trailer) {
        self.luggage = luggage
        super.init(mark: mark, year: year, trunkVolume: trunkVolume)
    }
    
    func treilerPresence() {
        luggage == .isPresent ? (print("Прицеп установлен")) : print("Прицеп отсутствует")
    }
}

class SportCar: Car {
    var mode: SportMode
    init(mark: String, year: Int, trunkVolume: Trunk, mode: SportMode) {
        self.mode = mode
        super.init(mark: mark, year: year, trunkVolume: trunkVolume)
}

    func speedOption() {
        mode == .on ? (print("Включён спортивный режим")) : print("Включён городской режим")
    }
}

let carOne = SportCar(mark: "Tesla model S", year: 2021, trunkVolume: .volumeOne, mode: .on)
let carTwo = TruckCar(mark: "Ford Transit", year: 2018, trunkVolume: .voumeFour, luggage: .isAbsent)

carOne.trunkVolume = .volumeThree
carOne.speedOption()

carTwo.trunkVolume = .volumeFive
carTwo.treilerPresence()

