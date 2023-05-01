//
//  SpeciesListView.swift
//  Species
//
//  Created by Eric on 01/05/2023.
//

import SwiftUI

struct SpeciesListView: View {
    @StateObject var speciesVM = SpeciesViewModel()
    
    var body: some View {
        NavigationStack {
            List(speciesVM.speciesArray) { species in
                Text(species.name)
            }
            .listStyle(.plain)
            .font(.title)
            .navigationTitle("Species")
        }
        .task {
            await speciesVM.getData()
        }
    }
}

struct SpeciesListView_Previews: PreviewProvider {
    static var previews: some View {
        SpeciesListView()
    }
}
