//
//  TabBarVM.swift
//  RecipeApp_D02
//
//  Created by Harsh Yadav on 19/08/21.
//

import Foundation
class recipeApiCall{
    func fetchData(Enter input:String){
        if let url = URL(string: input){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if(error != nil){
                    print(error!)
                }
                if let safedata = data{
                    let decoder = JSONDecoder()
                    do{
                        let decodedData = try decoder.decode(RecipeData.self , from: safedata)
                        print(decodedData.vegetarian)
                    }
                    catch{
                        print("error in decoding data")
                    }
                    
                }
            }
            task.resume()
        }
        
    }
}

