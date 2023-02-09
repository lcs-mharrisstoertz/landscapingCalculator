//
//  LandscapingStructure.swift
//  LandscapingCalculator
//
//  Created by Morgan Harris-Stoertz on 2023-02-07.
//

import Foundation

struct LandscapingStructure: Identifiable {
    let id = UUID()
    let areaName: String
    let areaPhoto: String
}


    
   let Rectangle =  LandscapingStructure(areaName: "Rectangle",
                         areaPhoto: "rectangle")
    
    let Circle = LandscapingStructure(areaName: "Circle",
                         areaPhoto: "circle")
    
   let RectangleWithAHalfCircle = LandscapingStructure(areaName: "Rectangle With A Half Circle",
                         areaPhoto: "recatangle with half circle")
    
    let ThreeRectangles = LandscapingStructure(areaName: "Three Rectangles",
                         areaPhoto: "three rectangles")
    
    
    let TwoRectangles = LandscapingStructure(areaName: "Two Rectangles",
                         areaPhoto: "two rectangles")
    

let allShapes = [Rectangle, Circle, RectangleWithAHalfCircle, ThreeRectangles, TwoRectangles]
