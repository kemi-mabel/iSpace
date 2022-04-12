//
//  dataFetcher.swift
//  career_1
//
//  Created by Oluwakemi Onajinrin on 01/02/2022.
//

import SwiftUI

class DataFetcher: ObservableObject {
    
    @Published var datas = [APIResponse.Data]()
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil

    
//    init() {
//        fecthAllData()
//    }

     func fecthAllData(){
        
        isLoading  = true
        errorMessage = nil
        let service = APIService()
        
//        let url = URL(string: "https://justncode.com/json/email.json")
        let url = URL(string: "http://resellersinventory.casdnet.com/api/v2/stock/fetchproduct")

       
        service.fetchDatas(url: url) { result in
        
        DispatchQueue.main.async {
        
         self.isLoading = false
         switch result {
         case .failure(let error):
        self.errorMessage =
            String(describing: error)
//                             print(error.description)
            
            print(error)
         case .success(let datas):
            print("--- sucess with \(datas.count)")
            self.datas = datas
            print(datas)
                        }
                    }
                }
        
            }
    
    //MARK: preview helpers
    
    static func errorState() -> DataFetcher {
        let fetcher = DataFetcher()
        fetcher.errorMessage = APIError.url(URLError.init(.notConnectedToInternet)).description
        return fetcher
    }
    
    static func successState() -> DataFetcher {
        let fetcher = DataFetcher()
        
        return fetcher
    }

        
    }



struct dataFetcher_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
