//
//  Client.swift
//  Builder
//
//  Created by Steven Wijaya on 08.12.2022.
//

import Foundation

class Client {
    private var landWidth: Float
    private var landLength: Float
    private var contractor: Contractor
    
    init(landWidth: Float, landLength: Float, contractor: Contractor) {
        self.landWidth = landWidth
        self.landLength = landLength
        self.contractor = contractor
    }
    
    func getLandWidth() -> Float {
        landWidth
    }
    
    func getLandLength() -> Float {
        landLength
    }
}
