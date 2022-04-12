//
//  KitListView.swift
//  career_1
//
//  Created by Oluwakemi Onajinrin on 01/02/2022.
//

import SwiftUI

struct URLImage: View {
    let urlString: String
    
    @State var data: Data?
    
    public var body: some View {
        if let data = data, let uiimage = UIImage(data: data) {
            Image(uiImage: uiimage)
                .resizable()
//                .scaledToFit()
//                .aspectRatio(contentMode: .fill)
                .frame(height: 400)
                .background(Color.white)
            
        } else {
            Image(systemName: "video")
                .resizable()
//                .scaledToFit()
                .frame(height: 250)
//                .aspectRatio(contentMode: .fill)
                .background(Color.gray)
                .onAppear {
                    fetchData()
                }
        }
    }
    private func fetchData(){
        guard let url = URL(string: urlString) else {
            return
        }
        let task = URLSession.shared.dataTask(with: url) {data,_,_ in
            self.data = data
        }
        task.resume()
    }
}


struct KitListView: View {
    //    let kits: [APIResponse.Data]
    @ObservedObject public var viewModel = DataFetcher()
    
    @State private var searchText: String = ""
    
    
    var body: some View {
//        NavigationView{
            List {
                ForEach(viewModel.datas, id: \.self) { kit in
                    NavigationLink(
                        destination: KitDetail(detail: kit),
                        label: {
                            VStack {
                                let imageArr = kit.image.components(separatedBy: ",")
                                URLImage(urlString: "http://resellersinventory.casdnet.com/\(imageArr[0])")
                                Spacer(minLength: 15)
                                Text(kit.name).bold()
                                Spacer(minLength: 15)
                                Text("NGN \(kit.end_user_price)")
                                    .bold()
                                    .foregroundColor(.green)
                            }
                        })
                    Spacer(minLength: 20)
                    
                    
                    
                }
            }.navigationTitle("Coding Kits")
            .onAppear {
                self.viewModel.fecthAllData()
            }
            
            
            //        .searchable(text: $searchText)
//        }
    }
    //}       let breeds: [Breed]
    //
    //    @State private var searchText: String = ""
    
    //    var filteredBreeds: [Breed] {
    //        if searchText.count == 0 {
    //          return breeds
    //        } else {
    //            return breeds.filter { $0.name.lowercased().contains(searchText.lowercased())
    //            }
    //        }
    //    }
    //    var body: some View {
    //        NavigationView {
    //            List {
    //                ForEach(filteredBreeds) { breed in
    //                    NavigationLink {
    //                        BreedDetailView(breed: breed)
    //                    } label: {
    //                        BreedRow(breed: breed)
    //                    }
    //
    //                }
    //            }
    //            .listStyle(PlainListStyle())
    //            .navigationTitle("Find Your Perfect Cat")
    //            .searchable(text: $searchText)
    //
    //        }
    //    }
}
struct KitListView_Previews: PreviewProvider {
    static var previews: some View {
        KitListView()
//        KitListView(kits: DataFetcher.successState().datas)
    }
}
