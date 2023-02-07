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
    
    Rectangle = landscapingStructure(areaType: "Rectangle",
                                     areaPhoto: "rectangle")
    ,
    
    Circle = landscapingStructure(areaType: "Circle",
                                  areaPhoto: "circle")
    ,
    
    RectangleWithHalfCircle = landscapingStructure(areaType: "Rectangle With A Half Circle",
                                                   areaPhoto: "rectangle with half circle")
    ,
    
    ThreeRectangles = landscapingStructure(areaType: "Three Rectangles",
                                           areaPhoto: "three rectangles")
    ,
    
    TwoRectangles = landscapingStructure(areaType: "Two Rectangles",
                                         areaPhoto: "two rectangles")
    ,
]

