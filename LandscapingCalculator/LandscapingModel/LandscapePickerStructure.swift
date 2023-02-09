//
//  LandscapePickerStructure.swift
//  LandscapingCalculator
//
//  Created by Morgan Harris-Stoertz on 2023-02-09.
//

import Foundation
struct LandscapeType: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let price: Double
}

let decomposedGravel = LandscapeType(name: "Decomposed Gravel", price: 1.00)

let crushedLimestone = LandscapeType(name: "Crushed Limestone", price: 1.69)

let mulch = LandscapeType(name: "Mulch", price: 0.30)

let turf = LandscapeType(name: "Turf", price: 8.50)

let crushedGranite = LandscapeType(name: "Crushed Granite", price: 1.79)

let allLandscapingTypes = [decomposedGravel, crushedGranite, crushedLimestone, mulch, turf]
