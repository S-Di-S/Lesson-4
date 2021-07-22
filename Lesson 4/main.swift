//
//  main.swift
//  Lesson 4
//
//  Created by Дмитрий on 22.07.2021.
//  Copyright © 2021 Dimitriy. All rights reserved.
//

import Foundation

print("Hello, World!")

import AppKit

enum nitro{
    case nitroOn
    case nitroOff
}
enum luggage{
    case trunkIsFull
    case TrunkIsEmpty
}
class Car{
    var brand: String
    var release: Int
    init(brand: String, release: Int){
        self.brand = brand
        self.release = release
    }
}
class trunkCar: Car{
    var trunk: luggage
    init(brand: String, release: Int, trunk: luggage){
        self.trunk = trunk
        super.init(brand: brand, release: release)
    }
    func trunkState(){
        if trunk == .trunkIsFull {
            print("Багажник полон")
        } else{
            print("Багажник пуст")
        }
    }
}
class sportCar: Car{
    var goFast: nitro
    init(brand: String, release: Int, goFast: nitro){
        self.goFast = goFast
        super.init(brand: brand, release: release)
    }
    func nitroState(){
        if goFast == .nitroOn {
            print("Спортивная машина едет быстрее")
        } else{
            print("Спортивная машина едет медленее")
        }
    }
}
let gazel = trunkCar(brand: "Газель", release: 2005, trunk: .trunkIsFull)
gazel.trunkState()
let audi = sportCar(brand: "Ауди", release: 2008, goFast: .nitroOn)
audi.nitroState()
