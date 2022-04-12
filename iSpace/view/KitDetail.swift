
//  KitDetail.swift
//  iSpace

//  Created by Oluwakemi Onajinrin on 17/02/2022.


import SwiftUI
import WebKit

struct KitDetail: View {
//    let kit: APIResponse.Data
    
    
    var detail: APIResponse.Data
    
//    @ObservedObject public var viewModel = DataFetcher()
    
    var body: some View {
        VStack(spacing: 20) {
            
            Spacer()
            
            let imageArr = detail.image.components(separatedBy: ",")
            URLImage(urlString: "http://resellersinventory.casdnet.com/\(imageArr[0])")
            Text(detail.name)
                .font(.title2)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            HStack{
                Label(detail.discount, image: detail.image)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Text(detail.date_added)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Text(detail.short_description)
                .font(.body)
                .padding()
            Text("Model: \(detail.model ?? "Age 5")")
                .font(.body)
                .padding()
            Text("Category: \(detail.category_id)")
                    .font(.body)
                    .padding()
            
            Spacer()
            
            Link(destination: detail.video_url, label: {
                Text("Watch Now")
                    .bold()
                    .font(.title2)
                    .frame(width: 280, height: 50)
                    .background(Color(.systemRed))
                    .foregroundColor(.white)
                    .cornerRadius(10)
            })
           
        }
    }
}

struct KitDetail_Previews: PreviewProvider {
    static var previews: some View {
        KitDetail(detail: APIResponse.Data(id: "one", name: "Ispace", sku: "null", price: "00", qty: "5", image: "course]", description: "God is good", attribute_value_id: "123", brand_id: "12", category_id: "55", store_id: "222", availability: "nil", subcategory_id: "great", date_added: "50722", status: "yes", short_description: "Great product", warranty: "1 year", model: "new", company_id: "567", vendor: "mall", show_product: "yes", show_on_promall: "yes", added_by: "ayo", end_user_price: "5000", alert_point: "null", tag: "Great Job", discount: "oo", priority: "1", video_url: URL(string: "https://www.youtube.com/watch?v=DgC5Z_0J5Rw")!))
//        KitDetail(detail: APIR)
    }
}
