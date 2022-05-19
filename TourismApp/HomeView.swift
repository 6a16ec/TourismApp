import SwiftUI

struct HomeView: View {
    var emojis = ["🌎", "☀️", "🔥", "🍋"]
    var emojiCount = 4
    var body: some View {
        CardView()
    }
//    var body: some View {
//        NavigationView {
//            ScrollView(.vertical) {
//                ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
//                    CardView1(content: emoji)
//                }
//            }
//            .navigationTitle("Places")
//        }
//    }
}
