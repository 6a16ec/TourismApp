import SwiftUI
import MapKit
import CoreLocation

struct PointOfInterest: Identifiable {
    // 2.
    let id = UUID()
    let name: String
    let latitude: Double
    let longitude: Double
    
    // 3.
    var coordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

struct RouteView: View {
    
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 56.329333, longitude: 44.016239),
        span: MKCoordinateSpan(latitudeDelta: 0.03, longitudeDelta: 0.03)
    )
    
    // 1.
    private let places = [
        //2.
        PointOfInterest(name: "Усадьба Рукавишниковых", latitude: 56.329333, longitude:  44.016239),
        PointOfInterest(name: "Музей-квартира А.М. Горького", latitude: 56.322765, longitude: 44.018595)
    ]
    
    var body: some View {
            Map(coordinateRegion: $region, annotationItems: places) { place in
                MapMarker(coordinate: place.coordinate)
            }
            .edgesIgnoringSafeArea(.all)
        }
}


//class RouteView: MKMapView {
//    var onMapTap: ((CLLocationCoordinate2D) -> Void)?
//
//    convenience init() {
//        self.init(frame: .zero)
//        addRecognizer()
//    }
//
//    private func addRecognizer() {
//        let recognizer = UITapGestureRecognizer(target: self, action: #selector(onTap(_:)))
//        addGestureRecognizer(recognizer)
//    }
//
//    @objc private func onTap(_ sender: UITapGestureRecognizer) {
//        let location = sender.location(in: self)
//        let coordinate = convert(location, toCoordinateFrom: self)
//        onMapTap?(coordinate)
//    }
//}

//struct RouteView: View {
//    @State private var region = MKCoordinateRegion(
//        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
//        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
//    )
//
//    var body: some View {
//        Map(coordinateRegion: $region)
//    }
//
//}

//struct RouteView: View {
//    var body: some View {
//        Button(action: {
//            print("Delete button tapped!")
//        }) {
//            Image("map-outline").renderingMode(.template)
//                .font(.largeTitle)
//                .foregroundColor(.red)
//        }
////        NavigationView {
////            ScrollView {
////                LazyVStack(alignment: .leading) {
////                    ForEach(1...100, id: \.self) {
////                        Text("Row \($0)")
////                    }
////                }
////            }
////            .navigationTitle("Routes")
////        }
//    }
//}
