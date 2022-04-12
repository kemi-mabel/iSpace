//
//  KitRow.swift
//  iSpace
//
//  Created by Oluwakemi Onajinrin on 17/02/2022.
//


//import SwiftUI
//
//struct KitRow: View {
//    let kits: APIResponse.Data
//    let imageSize: CGFloat = 200
//    var body: some View {
//
//
//            if kits.image?.url != nil {
//                AsyncImage(url: URL(string: kits.image!.url!)) { phase in
//                    if let image = phase.image {
//                        image.resizable()
//                            .scaledToFill()
//                            .frame(width: imageSize, height: imageSize)
//                            .clipped()
//
//                     } else if phase.error != nil {
//
//                         Text(phase.error?.localizedDescription ?? "error")
//                             .foregroundColor(Color.pink)
//                             .frame(width: imageSize, height: imageSize)
//                     } else {
//                        ProgressView()
//                             .frame(width: imageSize, height: imageSize)
//                     }
//
//                }
//            }else {
//                Color.gray.frame(width: imageSize, height: imageSize)
//            }
//
//            VStack(alignment: .leading, spacing: 5) {
//                Text(kits.name)
//                    .font(.headline)
//                Text(kits.price)
//            }
//
//
//    }
//}

//struct KitRow_Previews: PreviewProvider {
//    static var previews: some View {
//        KitRow(kits: APIResponse.Data(0))
//            .previewLayout(.fixed(width: 400, height: 200))
//    }
//}
