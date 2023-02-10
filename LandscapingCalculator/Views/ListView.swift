//
//  listView.swift
//  LandscapingCalculator
//
//  Created by Morgan Harris-Stoertz on 2023-02-07.
//

import SwiftUI

struct ListView: View {
    var body: some View {
            
            List {
                NavigationLink(destination: {
                    RectangleView(areaType: LandscapingStructure(areaName: "Rectangle", areaPhoto: "rectangle"))
                }, label: {
                    TitlePhotoView(photo: "rectangle", title: "Rectangle")
                    
                })
                
                NavigationLink(destination: {
                    CircleView(areaType: LandscapingStructure(areaName: "Circle", areaPhoto: "circle"))
                }, label: {
                    TitlePhotoView(photo: "circle", title: "Circle")
                    
                })
                NavigationLink(destination: {
                    RectangleHalfCircleView(areaType: LandscapingStructure(areaName: "Rectangle With A Half Circle", areaPhoto: "recatangle with half circle"))
                }, label: {
                    TitlePhotoView(photo: "recatangle with half circle", title: "Rectangle With A Half Circle")
                    
                })
                
                NavigationLink(destination: {
                    ThreeRectangleView(areaType: LandscapingStructure(areaName: "Three Rectangles", areaPhoto: "three rectangles"))
                }, label: {
                    TitlePhotoView(photo: "three rectangles", title: "Three Rectangles")
                    
                })
                
                NavigationLink(destination: {
                    TwoRectangleView(areaType: LandscapingStructure(areaName: "Two Rectangles", areaPhoto: "two rectangles"))
                }, label: {
                    TitlePhotoView(photo: "two rectangles", title: "Two Rectangles")
                    
                })
            }
        
        .navigationTitle("Select Area Type")
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ListView()
        }
    }
}
