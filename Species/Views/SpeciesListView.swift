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
            ZStack {
                List(speciesVM.speciesArray) { species in
                    NavigationLink {
                        DetailView(species: species)
                    } label: {
                        Text(species.name)
                    }
                }
                .listStyle(.plain)
                .font(.title)
                .navigationTitle("Species")
                
                if speciesVM.isLoading {
                    ProgressView()
                        .scaleEffect(4)
                        .tint(.green)
                }
            }
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
