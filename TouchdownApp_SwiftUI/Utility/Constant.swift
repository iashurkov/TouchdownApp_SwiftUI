//
//  Constant.swift
//  TouchdownApp_SwiftUI
//
//  Created by Igor Ashurkov on 26.12.2022.
//

import SwiftUI

enum Constant {
    
    // DATA
    
    static let players: [Player] = Bundle.main.decode("player.json")
    static let categories: [Category] = Bundle.main.decode("category.json")
    static let products: [Product] = Bundle.main.decode("product.json")
    static let brands: [Brand] = Bundle.main.decode("brand.json")
    
    // COLOR
    
    static let colorBackground = Color("ColorBackground")
    static let colorGray = Color(UIColor.systemGray4)
    
    // LAYOUT
    
    static let columnSpacing: CGFloat = 10
    static let rowSpacing: CGFloat = 10
    static var gridLayout: [GridItem] {
        Array(repeating: GridItem(.flexible(), spacing: self.rowSpacing), count: 2)
    }
    
    // UX
    // API
    // IMAGE
    // FONT
    // STRING
    // MISC
}
