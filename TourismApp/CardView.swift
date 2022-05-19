//
//  CardView.swift
//  TourismApp
//
//  Created by Darvin on 12.05.2022.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack (alignment: .bottomLeading){
            
            Image("image")
                .resizable()
                .scaledToFit()
            Text("Nizhny Novgorod")
                .foregroundColor(.yellow)
                .padding()
        }
        .padding()
    }
}
