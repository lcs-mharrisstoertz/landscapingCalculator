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
        List (allShapes) { currentShape in
            NavigationLink (destination: {
                landscapingStructure(shape: currentShape)
            }, label: {
                HStack{
                    Text(currentShape.areaType)
                    Image(currentShape.areaPhoto)
                }
            })
            
        }
    }
}

struct listView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            listView()
        }
    }
}


//import SwiftUI

//struct AnimationsListView: View {
    
 //   //MARK: Computed properties
  //  var body: some View {
        
        List(favourites) {favourite in
            
            NavigationLink(destination: {
                LottieView(animationNamed: favourite.fileName)
                    .navigationTitle(favourite.description)
            }, label: {
                Text(favourite.description)
            })
        }
        .navigationTitle("Useful Animations")
    }
}

struct AnimationsListView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationsListView()
    }
}
