//
//  landscapeCalculatorView.swift
//  landscapingCalculator
//
//  Created by Morgan Harris-Stoertz on 2023-02-07.
//

import SwiftUI

struct landscapeCalculatorView: View {
    
    //MARK: stored properties
    let areaType: landscapingStructure
    
    //what is the landscaping type?
    
    
    
    
    //MARK: stored properties
    var body: some View {
        VStack{
            Text(areaType.areaName)
                .font(Font.custom("Helvetica", size:35))
                .bold()
            Image(areaType.areaPhoto)
                .resizable()
                .scaledToFit()
            
            
        }
    }
}

struct landscapeCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            landscapeCalculatorView(areaType: landscapingStructure(areaName: "Circle", areaPhoto: "circle"))
        }
    }
}
