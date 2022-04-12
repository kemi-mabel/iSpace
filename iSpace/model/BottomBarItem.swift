//
//  BottomBarItem.swift
//  iSpace
//
//  Created by Oluwakemi Onajinrin on 4/7/22.
//
import SwiftUI

public struct BottomBarItem {
    public let icon: String
    public let title: String
    public let color: Color
//    public var body: some View {}
    
    public init(icon: String,
                title: String,
                color: Color) {
        self.icon = icon
        self.title = title
        self.color = color
    }
}
