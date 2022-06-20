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
import MapKit

struct FavoritesView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )

    var body: some View {
        Map(coordinateRegion: $region)
    }
}
