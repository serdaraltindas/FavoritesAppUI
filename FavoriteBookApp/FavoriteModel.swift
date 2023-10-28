import Foundation
import UIKit

struct FavoriteModel : Identifiable {
    var id = UUID()
    
    var title : String
    var elements : [FavoriteElements]
}

struct FavoriteElements : Identifiable {
    var id = UUID()
    
    var name : String
    var imageName : String
    var description : String
}


//Teams
let one = FavoriteElements(name: "Galatasaray", imageName: "one", description: "Galatasaray")
let two = FavoriteElements(name: "Fenerbahçe", imageName: "two", description: "Fenerbahçe")
let three = FavoriteElements(name: "Beşiktaş", imageName: "three", description: "Beşiktaş")

let favoriteTeams = FavoriteModel(title: "Favorite Teams", elements: [one, two, three])

//Movies
let four = FavoriteElements(name: "Arka Sokaklar", imageName: "four", description: "Arka Sokaklar")
let five = FavoriteElements(name: "Geniş Aile", imageName: "five", description: "Geniş Aile")

let favoriteMovies = FavoriteModel(title: "Favorite Movies", elements: [four, five])

//Musician
let six = FavoriteElements(name: "Model", imageName: "one", description: "Model")
let seven = FavoriteElements(name: "Mavi Gri", imageName: "two", description: "Mavi Gri")

let FavoriteMusician = FavoriteModel(title: "Favorite Musician", elements: [six, seven])

let myFavorites = [favoriteTeams, favoriteMovies, FavoriteMusician]
