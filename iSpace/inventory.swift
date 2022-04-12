//
//  inventory.swift
//  career_1
//
//  Created by Oluwakemi Onajinrin on 20/01/2022.
//
//
//import SwiftUI
//
//struct Response: Codable {
//    let success: Bool
//    let data: [Result]
//    let total: Int
//}
//
//
//struct Result: Hashable, Codable {
//
//    let id: String
//    let name: String
//    let sku: String
//    let price: String
//    let qty: String
//    let image: String
//    let description: String
//    let attribute_value_id: String
//    let brand_id: String
//    let category_id: String
//    let store_id:String
//    let availability: String
//    let subcategory_id: String
//    let date_added: String
//    let status: String
//    let short_description: String
//    let warranty: String
//    let model: String
//    let AGE: String
//    let company_id: String
//    let vendor:String
//    let show_product :String
//    let show_on_promall: String
//    let added_by: String
//    let alert_point: String
//    let tag: String
//    let discount: String
//    let priority: String
//    let video_url: String
//}
//class viewModel: ObservableObject {
//    @Published var result: [Result] = []
//    func fetch() {
//        guard let url = URL(string:
//                    "http://resellersinventory.casdnet.com/api/v2/stock/fetchproduct")  else {
//            return
//        }
//        let task = URLSession.shared.dataTask(with: url) { data, _, error in
//
//            guard let data = data, error == nil else{
//                return
//            }
//           // convert to json
//            do{
//                let results = try JSONDecoder().decode([Result].self, from: data)
//                DispatchQueue.main.async {
//                    self.result
//                }
//            }
//            catch{
//                print(error)
//            }
//        }
//    }
//}

//struct Result: Codable {
//
//
//}

