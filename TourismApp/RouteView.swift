//
//  RouteView.swift
//  TourismApp
//
//  Created by Darvin on 12.05.2022.
//

import SwiftUI


struct RouteView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(alignment: .leading) {
                    ForEach(1...100, id: \.self) {
                        Text("Row \($0)")
                    }
                }
            }
            .navigationTitle("Routes")
        }
    }
}
