//
//  listView.swift
//  landscapingCalculator
//
//  Created by Morgan Harris-Stoertz on 2023-02-07.
//

import SwiftUI

struct listView: View {
    //MARK: computed properties
    var body: some View {
        List (allShapes) { allShapes in
            NavigationLink (destination: {
                landscapeCalculatorView(shape: currentShape)
            }, label: {
                Text(favourite.description)
            })
        }
        .navigationTitle("Shape of Area")
            
        }
    }


struct listView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            listView()
        }
    }
}

