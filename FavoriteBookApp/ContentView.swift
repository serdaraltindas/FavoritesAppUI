//
//  ContentView.swift
//  FavoriteBookApp
//
//  Created by Serdar Altındaş on 26.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            List {
                ForEach(myFavorites) { favorite in
                    Section(header : Text(favorite.title).bold().font(.caption2)) {
                        ForEach(favorite.elements) { element in
                            NavigationLink(destination: DetailsView(chosenFavoriteElement: element)) {
                                Text(element.name)
                                    .bold()
                            }
                        }
                    }
                }
            }.navigationTitle("Favorite Book")
        }
    }
}

#Preview {
    ContentView()
}
