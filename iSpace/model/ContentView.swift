//
//  ContentView.swift
//  career_1
//
//  Created by Oluwakemi Onajinrin on 01/02/2022.
//

import SwiftUI

struct TabButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .opacity(configuration.isPressed ? 0.9 : 1)
            .scaleEffect(configuration.isPressed ? 0.98 : 1)
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
            NavigationView {
                KitListView()         }
            .tabItem {
                Label("Home", systemImage: "house")
            }
            NavigationView {
                
            }
            .tabItem {
                Label("Kits", systemImage: "chart.bar")
            }
            NavigationView {
                HomeTutFormView()
            }
            .tabItem {
                Label("Sign Up", systemImage: "chart.bar")
            }
        } // TabBar
//        .overlay(
//            Button {
//                // action
//            } label: {
//                ZStack {
//                    Circle()
//                        .foregroundColor(.white)
//                        .frame(width: 80, height: 80)
//                        .shadow(radius: 2)
//
//                    Image(systemName: "plus.circle.fill")
//                        .resizable()
//                        .foregroundColor(.primary)
//                        .frame(width: 72, height: 72)
//                } // ZStack
//                .offset(y: -10)
//            }
//            .buttonStyle(TabButtonStyle())
//            , alignment: .bottom
//        )
    }
}

        
//        if dataFetcher.isLoading {
//            LoadingView()
//        } else if dataFetcher.errorMessage != nil {
//            ErrorView(dataFetcher: dataFetcher)
//        } else {
////            KitListView(kits: dataFetcher.datas)
//            KitListView()
//        }

//let items: [BottomBarItem] = [
//    BottomBarItem(icon: "house.fill", title: "Home", color: .purple),
//    BottomBarItem(icon: "heart", title: "Likes", color: .pink),
//    BottomBarItem(icon: "magnifyingglass", title: "Search", color: .orange),
//    BottomBarItem(icon: "person.fill", title: "Profile", color: .blue)
//]
//
//struct BasicView: View {
//    let item: BottomBarItem
//    var detailText: String {
//        "\(item.title) Detail"
//    }
//
//    var destination: some View {
//        Text(detailText)
//            .navigationBarTitle(Text(detailText))
//    }
//
//    var navigateButton: some View {
//        NavigationLink(destination: destination) {
//            ZStack {
//                Rectangle()
//                    .fill(item.color)
//                    .cornerRadius(8)
//                    .frame(height: 52)
//                    .padding(.horizontal)
//
//                Text("Navigate")
//                    .font(.headline)
//                    .foregroundColor(.white)
//            }
//        }
//    }
    
//    func openTwitter() {
//        guard let url = URL(string: "https://twitter.com/smartvipere75") else {
//            return
//        }
//        UIApplication.shared.open(url, options: [:], completionHandler: nil)
//    }
    
//    var body: some View {
//        VStack {
//            Spacer()
//            Spacer()
//        }
//    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
