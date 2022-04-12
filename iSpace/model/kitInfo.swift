//
//  kitInfo.swift
//  career_1
//
//  Created by Oluwakemi Onajinrin on 31/01/2022.
//

//import Foundation
//
//struct Result: Codable, {
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
//
//    enum CodingKeys: String, CodingKey {
//        case id
//        case name
//        case price
//        case description = "description"
//        case availability = "energy_level"
//        case AGE = "hairless"
//        case image
//    }
//
//    init(from decoder: Decoder) throws {
//        let values = try decoder.container(keyedBy: CodingKeys.self)
//
//        id = try values.decode(String.self, forKey: .id)
//       name = try values.decode(String.self, forKey: .name)
//        description = try values.decode(String.self, forKey: .description)
//        availability = try values.decode(String.self, forKey: .availability)
//        AGE = try values.decode(String.self, forKey: .AGE)
//
////        let hairless = try values.decode(Int.self, forKey: .isHairless)
////        isHairless = hairless == 1
//
//        image = try values.decodeIfPresent(image.self, forKey: .image)
//    }
//
//    init(name: String, id: String, explaination: String, temperament: String,
//         energyLevel: Int, isHairless: Bool, image: Result?){
//        self.image = image
//
//    }
//}
