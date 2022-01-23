//
//  Header.swift
//  RecipeApp_D02
//
//  Created by Harsh Yadav on 19/08/21.
//

import SwiftUI

struct Header: View {
    var Title:String
    @Binding var UserInfo:Bool
    
    var body: some View {
        ZStack{
            VStack {
                
                
                //Top View
                HStack{
                    //User Info View
                    Image(systemName: "person.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                    
                    Spacer()
                    //Page Name
                    Text(Title)
                        .font(.system(size: 25))
                        .font(.headline)
                    
                    Spacer()
                    //Filter
                    Image(systemName: "slider.horizontal.3")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                }.padding()
                
                
                
                
            }
        }
        
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header(Title: "", UserInfo: .constant(false))
            .previewLayout(.sizeThatFits)
    }
}
