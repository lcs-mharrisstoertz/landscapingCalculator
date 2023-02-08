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


    
   let Rectangle =  landscapingStructure(areaName: "Rectangle",
                         areaPhoto: "rectangle")
    
    let Circle = landscapingStructure(areaName: "Circle",
                         areaPhoto: "circle")
    
   let RectangleWithAHalfCircle = landscapingStructure(areaName: "Rectangle With A Half Circle",
                         areaPhoto: "rectangle with half circle")
    
    let ThreeRectangles = landscapingStructure(areaName: "Three Rectangles",
                         areaPhoto: "three rectangles")
    
    
    let TwoRectangles = landscapingStructure(areaName: "Two Rectangles",
                         areaPhoto: "two rectangles")
    

let allShapes = [Rectangle, Circle, RectangleWithAHalfCircle, ThreeRectangles, TwoRectangles]
