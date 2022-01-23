//
//  RecipeData.swift
//  RecipeApp_D02
//
//  Created by Harsh Yadav on 19/08/21.
//

import Foundation
class RecipeData:Decodable{
    var vegetarian:Bool
    var veryPopular:Bool
    var spoonacularScore:Int
    var healthScore:Int
//    var weightWatcherSmartPoints:Int
    var extendedIngredients : [Ingredients]
    var pricePerServing:Double
    var title:String
    var summary:String
    var image:String
    var servings:Int
    var readyInMinutes:Int
}


struct Ingredients:Codable{

}
