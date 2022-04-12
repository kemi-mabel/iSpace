
//import Foundation
import SwiftUI


struct APIService {
    
//    func fetch<T: Decodable>(_ type: T.Type, url: URL?, completion: @escaping(Result<T,APIError>) -> Void) {
//        guard let url = url else {
//            let error = APIError.badURL
//            completion(Result.failure(error))
//            return
//        }
//        let task = URLSession.shared.dataTask(with: url) {(data , response, error) in
//
//            if let error = error as? URLError {
//                completion(Result.failure(APIError.url(error)))
//            }else if  let response = response as? HTTPURLResponse, !(200...299).contains(response.statusCode) {
//                completion(Result.failure(APIError.badResponse(statusCode: response.statusCode)))
//            }else if let data = data {
//                let decoder = JSONDecoder()
//                do {
//                    let result = try decoder.decode(type, from: data)
//                    completion(Result.success(result))
//
//                }catch {
//                    completion(Result.failure(APIError.parsing(error as? DecodingError)))
//                }
//
//            }
//        }
//
//        task.resume()
//    }
//
    func fetchDatas(url: URL?, completion: @escaping(Result<[APIResponse.Data], APIError>) -> Void) {
        
//        if let url = URL(string: "http://resellersinventory.casdnet.com/api/v2/stock/fetchproduct") {

        guard let url = url else {
            let error = APIError.badURL
            completion(Result.failure(error))
            return
        }
        let task = URLSession.shared.dataTask(with: url) {(data , response, error) in
            
            if let error = error as? URLError {
                completion(Result.failure(APIError.url(error)))
            }else if  let response = response as? HTTPURLResponse, !(200...299).contains(response.statusCode) {
                completion(Result.failure(APIError.badResponse(statusCode: response.statusCode)))
            }else if let data = data {
                let decoder = JSONDecoder()
                do {
                    let datas = try decoder.decode(APIResponse.self, from: data)
                    completion(Result.success(datas.data))
//                    print(datas.data)
                    
                }catch {
                    completion(Result.failure(APIError.parsing(error as? DecodingError)))
                    print("error: ", error)
                }
                
                
            }
        }

        task.resume()
        
    }
    
}

struct APIService_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
