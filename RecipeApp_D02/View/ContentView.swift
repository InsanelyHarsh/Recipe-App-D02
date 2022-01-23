//
//  ContentView.swift
//  RecipeApp_D02
//
//  Created by Harsh Yadav on 19/08/21.
//

import SwiftUI

struct ContentView: View {
    @State var showRecipe:Bool = false
    @State var selectedIndex = 0
    @State var SearchBar:String = ""
    @State var User:Bool = false
    var body: some View {
        NavigationView{
            VStack{
                switch selectedIndex{
                case 0:
                        VStack{
                            Header(Title: "HOME", UserInfo: $User)
                            SearchBarView(SearchBar: $SearchBar)
                            HomeViewContent(showRecipe: $showRecipe)
                            Spacer()
                        }
                        
                            
                case 1:
                    VStack {
                        Header(Title: "Order Food", UserInfo: $User)
                        
                        Spacer()
                    }
                case 2:
                    VStack{
                        Header(Title: "Saved", UserInfo: $User)
                        Spacer()
                    }
                default:
                    VStack{
                        Header(Title: "Settings", UserInfo: $User  )
                        settingView()
                        Spacer()
                    }
                }
       
                TabBar(selectedIndex: $selectedIndex)
            }
            .navigationBarHidden(true)
        }
        .onAppear(){
            recipeApiCall().fetchData(Enter: "https://api.spoonacular.com/recipes/716429/information?includeNutrition=false&cuisine=intdian&apiKey=5ec9d6a8c50a418eacebceadfff1d0d9")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}

struct HomeViewContent: View {
    @Binding var showRecipe:Bool
    var body: some View {
        NavigationView{
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
                        .sheet(item: $showRecipe, content: <#T##(Identifiable) -> View#>)
                        
                    }
                        
                })
            }
            .navigationBarHidden(true)
        }
    }
}
struct recipe:View{
    var body: some View{
        ZStack{
            VStack(spacing:0){
                DishName()
                    .background(Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)).ignoresSafeArea())
                    
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack{
                        Details().padding()
                            
                        DetailsView2()
                        
                        Image("testing")
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            
                        
                        Text("So what this suggests is that we can extract from human history a couple of principles. First, the principle that really isolated groups are at a disadvantage, because most groups get most of their ideas and innovations from the outside. Second, I also derive the principle of intermediate fragmentation: you don’t want excessive unity and you don’t want excessive fragmentation; instead, you want your human society or business to be broken up into a number of groups which compete with each other but which also maintain relatively free communication with each other. And those I see as the overall principles of how to organize a business and get rich.")
                            .padding()
                            .font(.system(size: 20))
                            .font(.body)
                        
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
                        Spacer()
                        
                        
                    }
                })
            }
        }
    }
}
