import Foundation
import SwiftUI
import Combine

struct Museum: Codable {
    var id: Int
    var name: String
    var type: String
    var coordinateX: Float
    var coordinateY: Float
    var description: String?
    var siteLink: String
    var openTime: String
    var closeTime: String
    var price: Int
    var discountForChildren: Bool
}

class HttpRequest: ObservableObject {

    @Published var authenticated = false

    func postAuth() {
        guard let url = URL(string: "http://45.67.58.165:8080/museum") else { return }

        let body: [String: String] = ["username": "user", "password": "user", "id": "1"]

        let finalBody = try! JSONSerialization.data(withJSONObject: body)

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.httpBody = finalBody
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")

        URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data else { return }
            let resData = try! JSONDecoder().decode(Museum.self, from: data)
            print(resData.name)
//            if resData.res == "correct" {
//                DispatchQueue.main.async {
//                    self.authenticated = true
//                }
//            }
        }.resume()
    }
}
