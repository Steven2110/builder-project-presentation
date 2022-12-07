//
//  House.swift
//  Builder
//
//  Created by Steven Wijaya on 08.12.2022.
//

import Foundation

struct House {
    private var width: Float
    private var length: Float
    private var windows: Int
    private var doors: Int
    private var bedrooms: Int
    private var bathrooms: Int
    private var kitchens: Int
    private var hasGarage: Bool
    private var hasSwimmingPool: Bool
    private var hasStatues: Bool
    private var hasGarden: Bool
    
    init(width: Float, length: Float, windows: Int, doors: Int, bedrooms: Int, bathrooms: Int, kitchens: Int, hasGarage: Bool, hasSwimmingPool: Bool, hasStatues: Bool, hasGarden: Bool) {
        self.width = width
        self.length = length
        self.windows = windows
        self.doors = doors
        self.bedrooms = bedrooms
        self.bathrooms = bathrooms
        self.kitchens = kitchens
        self.hasGarage = hasGarage
        self.hasSwimmingPool = hasSwimmingPool
        self.hasGarden = hasGarden
        self.hasStatues = hasStatues
    }
}

extension House {
    public var description: String {
        "This is a house with a width of \(width) and length of \(length). This house has \(bedrooms) bedrooms, \(bathrooms) bathrooms, \(kitchens) kitchens, \(doors) doors, \(windows) windows. This house \(hasGarage ? "does" : "doesn't") have garage, \(hasGarden ? "does" : "doesn't") have garden, \(hasSwimmingPool ? "does" : "doesn't") have swimming pool, \(hasStatues ? "does" : "doesn't") have statues."
    }
}
