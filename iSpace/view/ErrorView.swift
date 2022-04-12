//
//  ErrorView.swift
//  career_1
//
//  Created by Oluwakemi Onajinrin on 01/02/2022.
//

import SwiftUI

struct ErrorView: View {
    @ObservedObject var dataFetcher: DataFetcher
    var body: some View {
        VStack {
            
            Text("😿")
                .font(.system(size: 80))
            
            Text(dataFetcher.errorMessage ?? "")
            
            Button {
                dataFetcher.fecthAllData()
            } label: {
                Text("Try again")
            }

            
        }
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(dataFetcher: DataFetcher())
    }
}
