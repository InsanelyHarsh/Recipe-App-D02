//
//  HomeContentView.swift
//  RecipeApp_D02
//
//  Created by Harsh Yadav on 19/08/21.
//

import SwiftUI

struct HomeContentView: View {
    @Binding var showRecipe:Bool
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false, content: {
                ForEach(0..<5){i in
                    Button(action: {
                        showRecipe.toggle()
                    }, label: {
                        Rectangle()
                            .frame(width: 340, height: 150)
                            .cornerRadius(20)
                            .padding()
                            .foregroundColor(Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)))
                            .opacity(0.7)
                    })
                    .sheet(isPresented: $showRecipe, content: {
                        recipeView()
                    })
                    
                }
                    
            })
        }
        .navigationBarHidden(true)
    
    }
}

struct HomeContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeContentView(showRecipe: .constant(false))
            .previewDevice("iPhone 12 Pro")
            
    }
}
