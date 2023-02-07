//
//  landscapingStructure.swift
//  landscapingCalculator
//
//  Created by Morgan Harris-Stoertz on 2023-02-07.
//

import Foundation

struct landscapingStructure: Identifiable {
    let id = UUID()
    let areaType: String
    let areaPhoto: String
}

let rectangle = landscapingStructure(areaType: "Rectangle",
                                     areaPhoto: "rectangle")

let circle = landscapingStructure(areaType: "", areaPhoto: <#T##String#>)
