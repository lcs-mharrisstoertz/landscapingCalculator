//
//  RectangleView.swift
//  LandscapingCalculator
//
//  Created by Morgan Harris-Stoertz on 2023-02-10.
//

import SwiftUI

struct RectangleView: View {
    //MARK: stored properties
    let areaType: LandscapingStructure
    
    // What Landscape type was selected?
    @State var selectedLandscapeType: LandscapeType = mulch
    
    //dimensions
    @State var givenLength = ""
    @State var givenWidth = ""
    
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
        
        return length * width
    }
    
    var areaResult: String {
        
        guard let area = calculatedArea else {
            
            return "Cannot be found..."
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
            return "Cannot be found... "
        }
        
        return price.formatted(.number.precision(.fractionLength(1)))
    }
    
    //interface
    var body: some View {
        ScrollView{
            VStack{
                //Text("Landscaping Calculator")
                //    .font(Font.custom("Helvetica", size:30))
                //    .bold()
                
                HStack{
                    Text(areaType.areaName)
                        .font(Font.custom("Helvetica", size:30))
                        .bold()
                    
                    Image(areaType.areaPhoto)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 150)
                }
                
                //picker
                Group{
                    Text("Select Landscaping Type")
                        .font(Font.custom("Helvetica", size:20))
                        .bold()
                    
                    
                    Picker(selection: $selectedLandscapeType, content: {
                        ForEach(allLandscapingTypes) { currentType in
                            Text(currentType.name)
                                .tag(currentType)
                        }
                    }, label: {
                        Text("Landscape Type")
                    })
                    .pickerStyle(.wheel)
                    .frame(height:100)
                    
                    
//                    Text("Selected landscaping type:")
//                        .font(.title2)
//                        .bold()
//                    Text(selectedLandscapeType.name)
//                        .font(.title2)
//
//                    Spacer(minLength: 15)
                    
                    
                }
                
                
                //text fields
                Group{
                    VStack (spacing: 10){
                        HStack{
                            Text("Enter Width( ft.)")
                                .font(Font.custom("Helvetica", size:20))
                                .bold()
                            Spacer()
                        }
                        TextField("Width...", text: $givenWidth)
                            .font(.title2)
                        HStack{
                            Text("Enter Length ( ft.)")
                                .font(Font.custom("Helvetica", size:20))
                                .bold()
                            Spacer()
                        }
                        TextField("Length...", text: $givenLength)
                            .font(.title2)
                    }
                }
                
                //results
                
                Group{
                    
                    Text("Area")
                        .font(Font.custom("Helvetica", size:25))
                        .bold()
                    HStack{
                        Text(areaResult)
                            .font(.title3)
                        Text("sq. ft")
                            .font(.title3)
                            .bold()
                    }
                    
                    
                    Spacer()
                    
                    Text("Cost")
                        .font(Font.custom("Helvetica", size:25))
                        .bold()
                    HStack{
                        Text("$")
                            .font(.title3)
                            .bold()
                        
                        Text(priceResult)
                            .font(.title3)
                    }
                }
                
                Spacer(minLength: 15)
                
            }
            
            .padding()
        }
        .navigationTitle("Landscaping Calculator")
        .navigationBarTitleDisplayMode(.inline)
    }
    
}
struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView(areaType: LandscapingStructure(areaName: "Rectangle", areaPhoto: "rectangle"))
    }
}
