import SwiftUI


struct HomeView: View {
    var emojiCount = 4
    var cardList: Array<Card> = []
    @State private var isEditing = false
    @State public var card_opened = -1
    func test(x: Bool, d: Int) -> Bool {
        if x {
            card_opened = d
        }
        return true
    }
    var body: some View {
        GeometryReader { geometry in
            NavigationView {
                ScrollView {
                    LazyVStack(alignment: .leading) {
                        ForEach(1...100, id: \.self) { card_id in
                            let card = Card(id: card_id, tapped: false)
//                            let card_opened = 10;
                            if test(x: card.isTapped(), d: card_id) {
                                if card_id == 1 {
                                    CardView(card: card, img: "img1", text: "Нижегородский государственный художественный музей")
                                }
                                else if card_id == 2 {
                                    CardView(card: card, img: "img2", text: "Усадьба Рукавишниковых")
                                }
                                else if card_id == 3 {
                                    CardView(card: card, img: "img3", text: "Музей-квартира А.М. Горького")
                                }
                                else if card_id == 4 {
                                    CardView(card: card, img: "img4", text: "Зоологический музей")
                                }
                                else {
                                    CardView(card: card, img: "image", text: "Нижний Новгород")
                                }
                                
                            }
                            
                        }
                    }
                }
                .navigationTitle("Home")
            }
            if card_opened != -1 {
                VStack {
                    Text("test")
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

struct Test: View {
    var body: some View {
        GeometryReader { geometry in

            ZStack(alignment: .center) {
                HomeView()
//                let destinationView = HomeView()

//                VStack {
//                    Text(String(destinationView.card_opened))
//                }
//                .frame(width: geometry.size.width / 2,
//                       height: geometry.size.height / 5)
//                .background(Color.secondary.colorInvert())
//                .foregroundColor(Color.primary)
//                .cornerRadius(20)
//                .transition(.slide)
//                .opacity(1)

            }

        }
    }
}
}
