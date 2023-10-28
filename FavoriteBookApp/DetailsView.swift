//
//  DetailsView.swift
//  FavoriteBookApp
//
//  Created by Serdar Altındaş on 26.10.2023.
//

import SwiftUI

struct DetailsView: View {
    var chosenFavoriteElement : FavoriteElements
    
    var body: some View {
        VStack {
            
            Image(chosenFavoriteElement.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
                .onAppear().clipShape(Rectangle())
                .shadow(radius: 10)
            
            Text(chosenFavoriteElement.name)
                .bold()
                .font(.largeTitle)
            
            Text(chosenFavoriteElement.description)
                .bold()
        }
    }
}

#Preview {
    DetailsView(chosenFavoriteElement: one)
}
