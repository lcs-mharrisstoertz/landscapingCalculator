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
    
    // What Landscape type was selected?
    @State var selectedLandscapeType: LandscapeType = mulch
    
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
        
        return length * width + 0.5 * .pi * radius * radius
    }

    var areaResult: String {
        
        guard let area = calculatedArea else {

            return "Cannot be found. Please provide valid input."
        }
        
        return area.formatted(.number.precision(.fractionLength(1)))
        
    }
    
    //calculate price
    var calculatedPrice: Double? {
        guard let calculatedAreaUnwrapped = calculatedArea else {
            return nil
        }
        return calculatedAreaUnwrapped * selectedLandscapeType.price
    }
    
    var priceResult: String {
        guard let price = calculatedPrice else {
            return "Cannot be found. Please provide valid input."
        }
        
        return price.formatted(.number.precision(.fractionLength(1)))
    }
    
    
    var body: some View {
        VStack{
            HStack{
                Text(areaType.areaName)
                    .font(Font.custom("Helvetica", size:35))
                    .bold()
                
                Image(areaType.areaPhoto)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
            }
          
            
            Picker(selection: $selectedLandscapeType, content: {
                ForEach(allLandscapingTypes) { currentType in
                    Text(currentType.name)
                        .tag(currentType)
                }
            }, label: {
                Text("Landscape Type")
            })
            .pickerStyle(.menu)
            
            Text("Selected turf type:")
            Text(selectedLandscapeType.name)
            
            
            //text fields
            VStack (spacing: 25){
                TextField("Width...", text: $givenWidth)
                    .font(.title2)
                    .bold()
                TextField("Length...", text: $givenLength)
                    .font(.title2)
                    .bold()
                TextField("Radius...", text: $givenRadius)
                    .font(.title2)
                    .bold()
            }
            
            //results
            Text(priceResult)
            Text(priceResult)
            
            
            
            
        }
        
        .padding()
    }
}

struct LandscapeCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LandscapeCalculatorView(areaType: LandscapingStructure(areaName: "Circle", areaPhoto: "circle"))
        }
    }
}
