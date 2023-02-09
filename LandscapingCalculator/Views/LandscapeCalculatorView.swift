//
//  LandscapeCalculatorView.swift
//  LandscapingCalculator
//
//  Created by Morgan Harris-Stoertz on 2023-02-07.
//

import SwiftUI

struct LandscapeCalculatorView: View {
    
    //MARK: stored properties
    let areaType: LandscapingStructure
    
    //what is the Landscaping type?
    let landscapeTypes = ["Decomposed Gravel", "Crushed Limestone", "Mulch", "Turf", "Crushed Granite"]
    
    // What Landscape type was selected?
    @State var selectedLandscapeType = "Mulch"
    
    //dimensions
    @State var givenLength = ""
    @State var givenWidth = ""
    @State var givenRadius = ""
    
    // convert selected Landscaping type to price


    
    
    
    //MARK: computed properties
    
    //calculate area
    var calculatedArea: Double? {
        guard let length = Double(givenLength) else {
            return nil
        }
        
        guard let width = Double(givenWidth) else {
            return nil
        }
        
        guard let radius = Double(givenRadius) else {
            return nil
        }
        
        return length * width + radius * radius
    }

    var areaResult: String {
        
        guard let area = calculatedArea else {

            return "Cannot be found. Please provide valid input."
        }
        
        return area.formatted(.number.precision(.fractionLength(1)))
        
    }
    
    //calculate price
//    var calculatedPrice:
    
    
    var body: some View {
        VStack{
            Text(areaType.areaName)
                .font(Font.custom("Helvetica", size:35))
                .bold()
            Image(areaType.areaPhoto)
                .resizable()
                .scaledToFit()
            
            Picker(selection: $selectedLandscapeType, content: {
                ForEach(landscapeTypes, id: \.self) { currentType in
                    Text(currentType)
                }
            }, label: {
                Text("Landscape Type")
            })
            .pickerStyle(.inline)
            
            Text("Selected turf type")
            Text(selectedLandscapeType)
            
        }
    }
}

struct LandscapeCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LandscapeCalculatorView(areaType: LandscapingStructure(areaName: "Circle", areaPhoto: "circle"))
        }
    }
}
