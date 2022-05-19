//
//  CardView1.swift
//  TourismApp
//
//  Created by Darvin on 12.05.2022.
//

import SwiftUI

struct CardView1: View {
    var content: String
    @State var isFaceUp: Bool = true
    var body: some View {
        ZStack(alignment: .center) {
            let shape = RoundedRectangle(cornerRadius: 15)
            if isFaceUp {
                shape.fill().foregroundColor(.white)
                shape.stroke(lineWidth: 5)
                Text(content).font(.largeTitle)
            } else {
                shape.fill()
            }
            
        }
        .padding(.horizontal)
        .onTapGesture {
            isFaceUp = !isFaceUp
        }
    }
}
