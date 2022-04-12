//
//  LoadingView.swift
//  career_1
//
//  Created by Oluwakemi Onajinrin on 01/02/2022.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        Text("🧑🏽‍💻").font(.system(size: 100))
        ProgressView()
        Text("Gettig the kits....").foregroundColor(.gray)

        
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
