//
//  main.swift
//  Builder
//
//  Created by Steven Wijaya on 08.12.2022.
//

import Foundation

// Without using Director class (Contractor)
print("Without using director class (Contractor):\n")
let aHouseBuilder: HouseBuilder = HouseBuilder(width: 9, length: 15)
aHouseBuilder.buildBedrooms(2)
let aHouse: House = aHouseBuilder.build()
print("a's house:")
print(aHouse.description)
print("")

// Without using Director class (Contractor)
let myHouseBuilder = HouseBuilder(width: 20, length: 45)
myHouseBuilder.buildBedrooms(10)
myHouseBuilder.buildBathrooms(7)
myHouseBuilder.buildKitchens(5)
myHouseBuilder.buildGarage()
myHouseBuilder.buildSwimmingPool()
myHouseBuilder.buildDoors(24)
myHouseBuilder.buildWindows(30)

let myHouse = myHouseBuilder.build()
print("My house:")
print(myHouse.description)
print("")

// Using Director class (Contractor)
print("Using director class (Contractor):\n")
let contractor = Contractor()
let builderForClient1 = HouseBuilder(width: 9, length: 15)

contractor.buildComplexHouse(builderForClient1)
let clientHouse: House = builderForClient1.build()
print(clientHouse.description)
print("")

// Other example
let anotherContractor = Contractor()
let builderForClient2 = HouseBuilder(width: 30, length: 70)

anotherContractor.buildSimpleHouse(builderForClient2, builderType: .simple)
let clientHouse2: House = builderForClient2.build()
print(clientHouse2.description)
print("")

// Other example
let anotherContractor2 = Contractor()
let builderForClient3 = HouseBuilder(width: 45.9, length: 105.5)

anotherContractor2.buildAverageHouse(builderForClient3, builderType: .simple)
let clientHouse3: House = builderForClient3.build()
print(clientHouse3.description)
print("")
