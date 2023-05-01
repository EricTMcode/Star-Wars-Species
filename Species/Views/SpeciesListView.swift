//
//  SpeciesListView.swift
//  Species
//
//  Created by Eric on 01/05/2023.
//

import SwiftUI

struct SpeciesListView: View {
    let speciesName = ["Hutt", "Ewok", "Wookiee", "Droid", "Human"]
    
    var body: some View {
        NavigationStack {
            List(speciesName, id: \.self) { species in
                Text(species)
            }
            .listStyle(.plain)
            .font(.title)
            .navigationTitle("Species")
        }
    }
}

struct SpeciesListView_Previews: PreviewProvider {
    static var previews: some View {
        SpeciesListView()
    }
}
