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
    
    
    
    //MARK: stored properties
    var body: some View {
        VStack{
            Text(landscapingStructure.areaType)
            Image(landscapingStructure.areaPhoto)
        }
    }
}

struct landscapeCalculatorView_Previews: PreviewProvider {
    static var previews: some View {
        landscapeCalculatorView(areaName: "rectangle")
    }
}
