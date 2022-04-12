//
//  kitType.swift
//  career_1
//
//  Created by Oluwakemi Onajinrin on 31/01/2022.
//
import Foundation
import SwiftUI

struct APIResponse: Decodable {
    let success: Bool
    let data: [Data]
    let total: Int
    
    enum CodingKeys: String, CodingKey {
        case success = "success"
        case data = "data"
        case total = "total"   }

    struct Data: Decodable, Hashable, Identifiable{
        let id: String
        let name: String
        let sku: String?
        let price: String
        let qty: String
        let image: String
        let description: String
        let attribute_value_id: String
        let brand_id: String
        let category_id: String
        let store_id:String
        let availability: String
        let subcategory_id: String?
        let date_added: String
        let status: String
        let short_description: String
        let warranty: String?
        let model: String?
        let company_id: String
        let vendor: String
        let show_product: String
        let show_on_promall: String
        let added_by: String
        let end_user_price: String
        let alert_point: String?
        let tag: String?
        let discount: String
        let priority: String
        let video_url: URL!
    }

}




struct kitType_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
