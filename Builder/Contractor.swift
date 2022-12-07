//
//  Contractor.swift
//  Builder
//
//  Created by Steven Wijaya on 08.12.2022.
//

import Foundation

class Contractor {
    init() {}
}

extension Contractor {    
    func buildSimpleHouse(_ builder: Builder, builderType: BuilderType = BuilderType.simple) {
        switch builderType {
        case .complex:
            builder.buildBedrooms(3)
            builder.buildBathrooms(2)
            builder.buildDoors(6)
            builder.buildWindows(6)
            builder.buildGarage()
        case .average:
            builder.buildBedrooms(2)
            builder.buildBathrooms(1)
            builder.buildDoors(4)
            builder.buildWindows(6)
            builder.buildGarage()
        case .simple:
            builder.buildWindows(3)
            builder.buildGarage()
        }
    }
    
    func buildAverageHouse(_ builder: Builder) {
        switch builderType {
        case .average:
            builder.buildBedrooms(5)
            builder.buildBathrooms(4)
            builder.buildKitchens(2)
            builder.buildDoors(14)
            builder.buildWindows(15)
            builder.buildGarden()
            builder.buildGarage()
            break
        case .complex:
            builder.buildBedrooms(6)
            builder.buildBathrooms(4)
            builder.buildKitchens(3)
            builder.buildDoors(16)
            builder.buildWindows(23)
            builder.buildGarden()
            builder.buildGarage()
            builder.buildSwimmingPool()
            break
        default:
            builder.buildBedrooms(0)
            builder.buildBathrooms(0)
            builder.buildKitchens(0)
            builder.buildDoors(0)
            builder.buildWindows(0)
            print("Unfortunately the builder you pick doesn't have the necessary capability to build a complex house. Therefore your house can't be build. Please pick other builder!")
            break
        }
    }
    
    func buildComplexHouse(_ builder: Builder) {
        switch builderType {
        case .complex:
            builder.buildBedrooms(10)
            builder.buildBathrooms(3)
            builder.buildKitchens(4)
            builder.buildDoors(19)
            builder.buildWindows(26)
            builder.buildGarden()
            builder.buildSwimmingPool()
            builder.buildGarage()
            builder.buildStatue()
            break
        default:
            builder.buildBedrooms(0)
            builder.buildBathrooms(0)
            builder.buildKitchens(0)
            builder.buildDoors(0)
            builder.buildWindows(0)
            print("Unfortunately the builder you pick doesn't have the necessary capability to build a complex house. Please pick other builder!")
            break
        }
    }
}
