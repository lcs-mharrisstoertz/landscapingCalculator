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
                HStack{
                    Text(currentShape.areaName)
                    Image(currentShape.areaPhoto)
                        .resizable()
                        .scaledToFit()
                        .frame(height:75)
                }
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
