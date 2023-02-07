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

let allShapes = [
    
    landscapingStructure(areaType: "Rectangle",
                         areaPhoto: "rectangle")
    ,
    
    landscapingStructure(areaType: "Circle",
                         areaPhoto: "circle")
    ,
    
    landscapingStructure(areaType: "Rectangle With A Half Circle",
                         areaPhoto: "rectangle with half circle")
    ,
    
    landscapingStructure(areaType: "Three Rectangles",
                         areaPhoto: "three rectangles")
    ,
    
    landscapingStructure(areaType: "Two Rectangles",
                         areaPhoto: "two rectangles")
    ,
]

