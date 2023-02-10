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

let decomposedGravel = LandscapeType(name: "Decomposed Gravel   $1.00/sq.ft", price: 1.00)

let crushedLimestone = LandscapeType(name: "Crushed Limestone  $1.69/sq.ft", price: 1.69)

let mulch = LandscapeType(name: "Mulch  $0.30/sq.ft", price: 0.30)

let turf = LandscapeType(name: "Turf  $8.50/sq.ft", price: 8.50)

let crushedGranite = LandscapeType(name: "Crushed Granite  $1.79/sq.ft", price: 1.79)

let allLandscapingTypes = [decomposedGravel, crushedGranite, mulch, crushedLimestone, turf]
