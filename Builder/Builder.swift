//
//  Builder.swift
//  Builder
//
//  Created by Steven Wijaya on 08.12.2022.
//

import Foundation

enum BuilderType {
    case simple
    case average
    case complex
}

protocol Builder {
    func buildDoors(_ doors: Int)
    func buildWindows(_ windows: Int)
    func buildBedrooms(_ bedrooms: Int)
    func buildBathrooms(_ bathrooms: Int)
    func buildKitchens(_ kitchens: Int)
    func buildGarage()
    func buildSwimmingPool()
    func buildGarden()
    func buildStatue()
}

class HouseBuilder: Builder {
    private var width: Float
    private var length: Float
    public private(set) var windows: Int = 1
    public private(set) var doors: Int = 2
    public private(set) var bedrooms: Int = 1
    public private(set) var bathrooms: Int = 1
    public private(set) var kitchens: Int = 1
    public private(set) var garage: Bool = false
    public private(set) var garden: Bool = false
    public private(set) var swimmingPool: Bool = false
    public private(set) var statue: Bool = false
    
    init(width: Float, length: Float) {
        self.width = width
        self.length = length
    }
}

extension HouseBuilder {
    func buildDoors(_ doors: Int) {
        self.doors = doors
    }
    
    func buildWindows(_ windows: Int) {
        self.windows = windows
    }
    
    func buildBedrooms(_ bedrooms: Int) {
        self.bedrooms = bedrooms
    }
    
    func buildBathrooms(_ bathrooms: Int) {
        self.bathrooms = bathrooms
    }
    
    func buildKitchens(_ kitchens: Int) {
        self.kitchens = kitchens
    }
    
    func buildGarage() {
        self.garage = true
    }
    
    func buildGarden() {
        self.garden = true
    }
    
    func buildSwimmingPool() {
        self.swimmingPool = true
    }
    
    func buildStatue() {
        self.statue = true
    }
    
    func build() -> House {
        House(
            width: width, length: length,
            windows: windows, doors: doors,
            bedrooms: bedrooms, bathrooms: bathrooms, kitchens: kitchens,
            hasGarage: garage,
            hasSwimmingPool: swimmingPool,
            hasStatues: statue,
            hasGarden: garden)
    }
}
