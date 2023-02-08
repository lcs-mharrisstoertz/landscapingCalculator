//
//  landscapingStructure.swift
//  landscapingCalculator
//
//  Created by Morgan Harris-Stoertz on 2023-02-07.
//

import Foundation

struct landscapingStructure: Identifiable {
    let id = UUID()
    let areaName: String
    let areaPhoto: String
}

let allShapes = [
    
    landscapingStructure(areaName: "Rectangle",
                         areaPhoto: "rectangle")
    ,
    
    landscapingStructure(areaName: "Circle",
                         areaPhoto: "circle")
    ,
    
    landscapingStructure(areaName: "Rectangle With A Half Circle",
                         areaPhoto: "rectangle with half circle")
    ,
    
    landscapingStructure(areaName: "Three Rectangles",
                         areaPhoto: "three rectangles")
    ,
    
    landscapingStructure(areaName: "Two Rectangles",
                         areaPhoto: "two rectangles")
    ,
]

