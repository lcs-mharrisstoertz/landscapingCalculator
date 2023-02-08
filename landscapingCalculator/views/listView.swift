//
//  listView.swift
//  landscapingCalculator
//
//  Created by Morgan Harris-Stoertz on 2023-02-07.
//

import SwiftUI

struct listView: View {
    var body: some View {
        List(allShapes) { currentShape in
            NavigationLink(destination: {
                landscapeCalculatorView(areaType: currentShape)
            }, label:{
                Text(currentShape.areaName)
            })
            
        }
        .navigationTitle("Select Area Type")
    }
}

struct listView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            listView()
        }
    }
}
