//
//  DetailView.swift
//  Species
//
//  Created by Eric on 01/05/2023.
//

import SwiftUI

struct DetailView: View {
    let species: Species
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(species.name)
                .font(.largeTitle)
                .bold()
            
            Rectangle()
                .frame(height: 2)
                .frame(maxWidth: .infinity)
                .foregroundColor(.gray)
            
            Group {
                HStack(alignment: .top) {
                    Text("Classification:")
                        .bold()
                    
                    Text(species.classification)
                }
                
                HStack(alignment: .top) {
                    Text("Designation:")
                        .bold()
                    
                    Text(species.designation)
                }
                
                HStack(alignment: .top) {
                    Text("Height:")
                        .bold()
                    
                    Text(species.averageHeight)
                    
                    Spacer()
                    
                    Text("Lifespan:")
                        .bold()
                    
                    Text(species.averageLifespan)
                }
                HStack(alignment: .top) {
                    Text("Language:")
                        .bold()
                    
                    Text(species.language)
                }
                HStack(alignment: .top) {
                    Text("Skin Colors:")
                        .bold()
                    
                    Text(species.skinColors)
                }
                HStack(alignment: .top) {
                    Text("Hair Colors:")
                        .bold()
                    
                    Text(species.hairColors)
                }
                HStack(alignment: .top) {
                    Text("Eye Colors:")
                        .bold()
                    
                    Text(species.eyeColors)
                }
            }
            .font(.title2)
            
            Spacer()
        }
        .padding()
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(species: Species(name: "Swifter", classification: "Coder", designation: "sentient", averageHeight: "175", averageLifespan: "83", language: "Swift", skinColors: "various", hairColors: "none", eyeColors: "blue, green, brown, gray, or violet"))
    }
}