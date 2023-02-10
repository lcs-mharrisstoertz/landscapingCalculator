//
//  ThreeRectangleView.swift
//  LandscapingCalculator
//
//  Created by Morgan Harris-Stoertz on 2023-02-10.
//

import SwiftUI

struct ThreeRectangleView: View {
    //MARK: stored properties
    let areaType: LandscapingStructure
    
    // What Landscape type was selected?
    @State var selectedLandscapeType: LandscapeType = mulch
    
    //dimensions
    @State var givenLength = ""
    @State var givenLengthTwo = ""
    @State var givenLengthThree = ""
    @State var givenWidth = ""
    @State var givenWidthTwo = ""
    @State var givenWidthThree = ""
    
    // convert selected Landscaping type to price
    
    
    
    
    
    //MARK: computed properties
    
    //calculate area
    var calculatedArea: Double? {
        guard let length = Double(givenLength) else {
            return nil
        }
        
        guard let length2 = Double(givenLengthTwo) else {
            return nil
        }
        
        guard let length3 = Double(givenLengthThree) else {
            return nil
        }
        
        guard let width = Double(givenWidth) else {
            return nil
        }
        
        guard let width2 = Double(givenWidthTwo) else {
            return nil
        }
        
        guard let width3 = Double(givenWidthThree) else {
            return nil
        }
        
        
        
        
        return length * width + length2 * width2 + length3 * width3
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
                        
                        Group{
                            HStack{
                                Text("Enter Width 1")
                                    .font(Font.custom("Helvetica", size:20))
                                    .bold()
                                Spacer()
                            }
                            TextField("Width 1...", text: $givenWidth)
                                .font(.title2)
                            
                            
                            HStack{
                                Text("Enter Length 1")
                                    .font(Font.custom("Helvetica", size:20))
                                    .bold()
                                Spacer()
                            }
                            TextField("Length 1...", text: $givenLength)
                                .font(.title2)
                            
                        }
                        
                        Group{
                            HStack{
                                Text("Enter Width 2")
                                    .font(Font.custom("Helvetica", size:20))
                                    .bold()
                                Spacer()
                            }
                            TextField("Width 2...", text: $givenWidthTwo)
                                .font(.title2)
                            
                            
                            
                            HStack{
                                Text("Enter Length 2")
                                    .font(Font.custom("Helvetica", size:20))
                                    .bold()
                                Spacer()
                            }
                            TextField("Length 2...", text: $givenLengthTwo)
                                .font(.title2)
                        }
                        
                        
                        Group{
                            HStack{
                                Text("Enter Width 3")
                                    .font(Font.custom("Helvetica", size:20))
                                    .bold()
                                Spacer()
                            }
                            TextField("Width 3...", text: $givenWidthThree)
                                .font(.title2)
                            
                            
                            HStack{
                                Text("Enter Length 3")
                                    .font(Font.custom("Helvetica", size:20))
                                    .bold()
                                Spacer()
                            }
                            TextField("Length 3...", text: $givenLengthThree)
                                .font(.title2)
                        }
                        
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
    
    struct ThreeRectangleView_Previews: PreviewProvider {
        static var previews: some View {
            ThreeRectangleView(areaType: LandscapingStructure(areaName: "Three Rectangles", areaPhoto: "three rectangles"))
        }
    }

