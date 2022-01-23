//
//  TabBar.swift
//  RecipeApp_D02
//
//  Created by Harsh Yadav on 19/08/21.
//

import SwiftUI

struct TabBar: View {
    @Binding var selectedIndex:Int
    let tabBarImages = ["house","plus.app.fill","cart","gear"]
    var body: some View {
        ZStack{
//            Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
            VStack {
                
                //tab bar view
                HStack{
                    ForEach(0..<4){ i in
                        Spacer()
                        Button(action: {
                            selectedIndex = i
                            
                        } , label: {
                            Image(systemName: "\(tabBarImages[i])")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .foregroundColor(selectedIndex == i ? Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)): Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                                .animation(.none)
                        })
                        Spacer()
                    }
                }
            }.padding()
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(selectedIndex: .constant(0))
    }
}
