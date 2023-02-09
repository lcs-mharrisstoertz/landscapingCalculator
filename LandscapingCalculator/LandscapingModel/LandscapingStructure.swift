//
//  LandscapingStructure.swift
//  LandscapingCalculator
//
//  Created by Morgan Harris-Stoertz on 2023-02-07.
//

import Foundation

struct LandscapingStructure: Identifiable, Hashable {
    let id = UUID()
    let areaName: String
    let areaPhoto: String
}



let rectangle = LandscapingStructure(areaName: "Rectangle",
                                     areaPhoto: "rectangle")

let circle = LandscapingStructure(areaName: "Circle",
                                  areaPhoto: "circle")

let rectangleWithAHalfCircle = LandscapingStructure(areaName: "Rectangle With A Half Circle",
                                                    areaPhoto: "recatangle with half circle")

let threeRectangles = LandscapingStructure(areaName: "Three Rectangles",
                                           areaPhoto: "three rectangles")


let twoRectangles = LandscapingStructure(areaName: "Two Rectangles",
                                         areaPhoto: "two rectangles")


let allShapes = [rectangle, circle, rectangleWithAHalfCircle, threeRectangles, twoRectangles]
