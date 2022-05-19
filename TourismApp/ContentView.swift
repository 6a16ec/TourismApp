//
//  ContentView.swift
//  TourismApp
//
//  Created by Darvin on 14.02.2022.
//

import SwiftUI





struct ContentView: View {
    var emojis = ["🌎", "☀️", "🔥", "🍋"]
    @State var emojiCount = 3
    @State private var selectedTab = "Home"
    var body: some View {
        
        TabView(selection: $selectedTab) {
            HomeView()
                .tabItem {
                    selectedTab == "Home" ? Image("home").renderingMode(.template) : Image("home-outline").renderingMode(.template)
                    Text("Home")
                }
                .tag("Home")
            RouteView()
                .tabItem {
                    selectedTab == "Route" ? Image("map-search").renderingMode(.template) : Image("map-search-outline").renderingMode(.template)
                    Text("Route")
                }
                .tag("Route")
            FavoritesView()
                .tabItem {
                    selectedTab == "Favorites" ? Image("star").renderingMode(.template) : Image("star-outline").renderingMode(.template)
                    Text("Favorites")
                }
                .tag("Favorites")
        }
        .accentColor(.green)
//        TabView(selection: $selectedTab) {
//            VStack {
//                Text("Tab 1")
//                Text(Image(systemName: "star"))
//            }
//            .tabItem {
//                selectedTab == 0 ? Image(systemName: "star") : Image(systemName: "sun.max")
//                Text("First")
//            }
//            .tag(0)
//
//            VStack {
//                Text("Tab 2")
//                Text(Image(systemName: "moon.stars"))
//            }
//            .tabItem {
//                selectedTab == 1 ? Image(systemName: "moon.stars") : Image(systemName: "sun.max")
//                Text("Second")
//            }
//        }
        
//        VStack {
//            HStack {
//                ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
//                    CardView(content: emoji)
//                }
//            }
//            HStack {
//                Button(action: {
//                    emojiCount -= 1
//                }, label: {
//                    Text("-")
//                })
//                Spacer()
//                Button(action: {
//                    emojiCount += 1
//                }, label: {
//                    Text("+")
//                })
//            }
//        }
//        .foregroundColor(.red)
//        .padding(.all)
        }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 13")
                .preferredColorScheme(.light)
        }
//        ContentView()
//            .preferredColorScheme(.dark)
            
    }
}

//LazyVStack
