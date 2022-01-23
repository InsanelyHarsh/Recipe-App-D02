//
//  settingView.swift
//  RecipeApp_D02
//
//  Created by Harsh Yadav on 19/08/21.
//

import SwiftUI

struct settingView: View {
    @State var Mode:Bool = false
    var body: some View {
        ZStack{
            VStack {
                
                Toggle(isOn: $Mode, label: {
                    Text("\(Mode ? "Dark" : "Light") Mode")
                        .font(.system(size: 25))
                        .font(.headline)
                        .fontWeight(.medium)
                        .padding()

                }).toggleStyle(DefaultToggleStyle())
                .padding()
                Text("More Comming Soon")
                Spacer()
                Text("Made by Harsh")
                    .font(.system(size: 20))
                    .font(.caption)

                    
            }
            
        }
    }
}

struct settingView_Previews: PreviewProvider {
    static var previews: some View {
        settingView()
    }
}
