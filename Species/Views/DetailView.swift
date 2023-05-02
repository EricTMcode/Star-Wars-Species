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
                SpeciesRowView(name: "Classification:", content: species.classification)
                SpeciesRowView(name: "Designation:", content: species.designation)
                HStack(alignment: .top) {
                    SpeciesRowView(name: "Height:", content: species.averageHeight)
                    Spacer()
                    SpeciesRowView(name: "Lifespan:", content: species.averageLifespan)
                }
                SpeciesRowView(name: "Language:", content: species.language)
                SpeciesRowView(name: "Skin Colors:", content: species.skinColors)
                SpeciesRowView(name: "Hair Colors:", content: species.hairColors)
                SpeciesRowView(name: "Eye Colors:", content: species.eyeColors)
            }
            .font(.title2)
            
            VStack {
                AsyncImage(url: URL(string: returnSpeciesURL())) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(15)
                        .shadow(radius: 15)
                        .animation(.default, value: image)
                } placeholder: {
                    Image(systemName: "photo")
                        .resizable()
                        .scaledToFit()
                }
            }
            .frame(maxWidth: .infinity)
            
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
        .padding()
    }
    
    func returnSpeciesURL() -> String {
        var newName = species.name.replacingOccurrences(of: " ", with: "-")
        newName = newName.replacingOccurrences(of: "'", with: "")
        return "https://gallaugher.com/wp-content/uploads/2023/04/\(newName).jpg"
    }
}

struct SpeciesRowView: View {
    var name: String
    var content: String
    
    var body: some View {
        HStack(alignment: .top) {
            Text(name)
                .bold()
            
            Text(content)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(species: Species.example)
    }
}
