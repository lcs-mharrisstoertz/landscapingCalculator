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

let circle = landscapingStructure(areaType: "Circle",
                                  areaPhoto: "circle")

let rectangleWithHalfCircle = landscapingStructure(areaType: "Rectangle With A Half Circle",
                                                   areaPhoto: "rectangle with half circle")

let threeRectangles = landscapingStructure(areaType: "Three Rectangles",
                                           areaPhoto: "three rectangles")

let twoRectangles = landscapingStructure(areaType: "Two Rectangles",
                                         areaPhoto: "two rectangles")


