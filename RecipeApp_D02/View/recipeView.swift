//
//  recipeView.swift
//  RecipeApp_D02
//
//  Created by Harsh Yadav on 19/08/21.
//

import SwiftUI

struct recipeView: View {
    var body: some View {
        ZStack{
            VStack(spacing:0){
                DishName()
                    .background(Color(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)).ignoresSafeArea())
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack{
                        Details()
                            .padding()
                        
                        DetailsView2()
                        
                        Image("testing")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                        
                        
                        Text("So what this suggests is that we can extract from human history a couple of principles. First, the principle that really isolated groups are at a disadvantage, because most groups get most of their ideas and innovations from the outside. Second, I also derive the principle of intermediate fragmentation: you don’t want excessive unity and you don’t want excessive fragmentation; instead, you want your human society or business to be broken up into a number of groups which compete with each other but which also maintain relatively free communication with each other. And those I see as the overall principles of how to organize a business and get rich.")
                            .padding()
                            .font(.system(size: 20))
                            .font(.body)
                        
                        Button()
                        Spacer()
                    }
                })
            }
        }
    }
}


//Dish Name
struct DishName: View {
    var body: some View {
        HStack {
            Text("Dish 1")
                .font(.system(size: 35))
                .font(.headline)
                .fontWeight(.bold)
                .padding()
                .foregroundColor(.white)
            Spacer()
        }
    }
}
// Details Bar 1
struct Details: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Image(systemName: "dot.square")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.green)
                Text("veg/non-veg")
            }
            Spacer()
            
            VStack {
                Image(systemName: "person.2.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.blue)
                Text("Servings: 4")
            }
            Spacer()
            VStack{
                Image(systemName: "suit.heart.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.red)
                Text("Health Score: 45")
            }
            Spacer()
        }
    }
}
// Details Bar 2
struct DetailsView2: View {
    var body: some View {
        HStack{
            Spacer()
            Image(systemName: "flame.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 25, height: 25)
                .foregroundColor(.red)
            ZStack{
                Text("Popular")
                    .fontWeight(.light)
                    .font(.system(size: 20))
                
                Rectangle()
                    
                    .stroke(Color.red, lineWidth: 10)
                    .frame(width: 80, height: 35)
                    .cornerRadius(8)
                    .opacity(0.8)
                
            }
            Spacer()
            HStack{
                Image(systemName: "indianrupeesign.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 35, height: 35)
                    
                    .foregroundColor(.yellow)
                    .shadow(radius: 5)
                Text("550")
                    .font(.system(size: 30))
            }
            
            Spacer()
        }.padding()
    }
}
//Add to Cart & Bookmark Button View
struct Button: View {
    var body: some View {
        HStack{
            Spacer()
            ZStack {
                Rectangle()
                    .frame(width: 155, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                    .opacity(1)
                    .cornerRadius(10)
                    .foregroundColor(.blue)
                VStack{
                    Image(systemName: "cart.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)))
                    
                    Text("Add To Cart")
                        .foregroundColor(.white)
                }
            }
            Spacer()
            ZStack {
                Rectangle()
                    .frame(width: 155, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
                    .opacity(1)
                    .cornerRadius(10)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                VStack{
                    Image(systemName: "bookmark.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40, alignment: .center)
                        .foregroundColor(Color(#colorLiteral(red: 0.93137604, green: 0.8580111861, blue: 0.173130244, alpha: 1)))
                    
                    Text("Bookmark for Later")
                        .foregroundColor(.white)
                }
                
            }
            Spacer()
        }
    }
}


struct recipeView_Previews: PreviewProvider {
    static var previews: some View {
        recipeView()
    }
}
