//
//  TitlePhotoView.swift
//  LandscapingCalculator
//
//  Created by Morgan Harris-Stoertz on 2023-02-10.
//

import SwiftUI

struct TitlePhotoView: View {
    
    //MARK: stored properties
    let photo:String
    let title:String
    
    //MARK: computed properties
    
    // returns an interface to show a photo with a caption and credit
    
    var body: some View {
      
            
            HStack(spacing: 10) {
                Image(photo)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 60, alignment: .center)
                    .clipped()
                
                VStack{
                
                    VStack(alignment: .leading) {
                        Text (title)
                            .font(.title3)
                            .bold()
                    }
                }
            }
        }
    }

struct TitlePhotoView_Previews: PreviewProvider {
    static var previews: some View {
        TitlePhotoView(photo: "rectangle", title: "Rectangle")
    }
}
