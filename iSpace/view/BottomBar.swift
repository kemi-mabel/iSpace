//
//  BottomBar.swift
//  iSpace
//
//  Created by Oluwakemi Onajinrin on 4/7/22.
//

import SwiftUI

import SwiftUI

public struct BottomBar : View {
    @Binding public var selectedIndex: Int
    
    public let items: [BottomBarItem]
    
    public init(selectedIndex: Binding<Int>, items: [BottomBarItem]) {
        self._selectedIndex = selectedIndex
        self.items = items
    }
    
    func itemView(at index: Int) -> some View {
        Button(action: {
            withAnimation { self.selectedIndex = index }
        }) {
            BottomBarItemView(isSelected: index == selectedIndex, item: items[index])
        }
    }
    
    public var body: some View {
        HStack(alignment: .bottom) {
            ForEach(0..<items.count) { index in
                self.itemView(at: index)
                
                if index != self.items.count-1 {
                    Spacer()
                }
            }
        }
        .padding()
        .frame(width: 400.0)
        .animation(.default)
        .background(Color.white)
        .cornerRadius(30)
    
        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 0, y: -2)
        .edgesIgnoringSafeArea(.bottom)
    }
}


#if DEBUG
struct BottomBar_Previews : PreviewProvider {
    static var previews: some View {
        BottomBar(selectedIndex: .constant(0), items: [
            BottomBarItem(icon: "house.fill", title: "Home", color: .purple),
            BottomBarItem(icon: "heart", title: "Likes", color: .pink),
            BottomBarItem(icon: "magnifyingglass", title: "Search", color: .orange),
            BottomBarItem(icon: "person.fill", title: "Profile", color: .blue)
        ])
    }
}
#endif
