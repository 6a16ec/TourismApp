import SwiftUI

struct Card {
    let id: Int
    public var tapped: Bool = false
    func isTapped() -> Bool {
        return tapped
    }
}


struct CardView: View {
    @State var is_favourite = false
    @State public var tapped = false
    @State var card: Card
    @State var img: String
    @State var text: String

    var body: some View {
        ZStack { // alignment: .bottomLeading
            Image(img)
                .resizable()
                .onTapGesture() {
                    self.card.tapped = true;
                }
//                .blur(radius: 20)
//                .scaledToFill()
//                .frame(alignment: .center)
//                .clipped()

            VStack {
                HStack (alignment: .bottom){
                    Button(action: {
                        is_favourite = !is_favourite
                    }){
                        Image(is_favourite ? "star" : "star-outline")
                            .renderingMode(.template)
                            .foregroundColor(.init(white: 0.9))
//                            .padding([.top, .trailing])
                            .background (Color.black.blur(radius: 10, opaque: false))
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .trailing)
                Spacer()
                HStack (alignment: .top) {
                    Text(text)
                        .foregroundColor(.white)
                        .background (Color.black.blur(radius: 5, opaque: false))
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            
            
            
        }
        .frame(height: 120, alignment: .leading)
        .padding()
    }

//    init(card: Card) {
//        self.card = card
//    }
}
//print("Loading row \(id)")
