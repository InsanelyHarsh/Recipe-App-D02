//
//  SearchBar.swift
//  RecipeApp_D02
//
//  Created by Harsh Yadav on 19/08/21.
//

import SwiftUI

struct SearchBarView: View {
//    SearchBar: $SearchBar
    @Binding var SearchBar:String
    var body: some View {
        //Search Bar
        HStack {
            
            //SearchBar
            TextField("Search Recipe", text: $SearchBar)
                .frame(height: 50)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.horizontal], 4)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
                .padding([.horizontal], 5)
                .padding([.vertical] , 10)
                .offset(x: SearchBar.count>0 ? 0: 27 , y: 0)
                .animation(.linear(duration: 0.5))
            
            //Search Button
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40)
                    .foregroundColor(SearchBar.count>3 ? Color.blue : Color.black).animation(.linear(duration: 0.5))
                    .offset(x: SearchBar.count>0 ? -2 : 50 , y: 0)
            })
        }
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView(SearchBar: .constant(""))
    }
}
