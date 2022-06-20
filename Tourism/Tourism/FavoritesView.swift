//import SwiftUI
//
//struct FavoritesView: View {
//    var body: some View {
//        NavigationView {
//            CardView()
//            .navigationTitle("Favorites")
//        }
//    }
//}
import SwiftUI

struct FavoritesView: View {
    var body: some View {

        GeometryReader { geometry in

            ZStack(alignment: .center) {

                HomeView()

                VStack {
                    Text("3")
                }
                .frame(width: geometry.size.width / 2,
                       height: geometry.size.height / 5)
                .background(Color.secondary.colorInvert())
                .foregroundColor(Color.primary)
                .cornerRadius(20)
                .transition(.slide)
                .opacity(1)

            }

        }

    }
}
