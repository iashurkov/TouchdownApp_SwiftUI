//
//  ProductModel.swift
//  TouchdownApp_SwiftUI
//
//  Created by Igor Ashurkov on 30.12.2022.
//

import Foundation
import SwiftUI

struct Product: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
    
    var backgroundColor: Color { Color(red: self.color[0],
                                       green: self.color[1],
                                       blue: self.color[2]) }
    
    var formattedPrice: String { "$ \(self.price)" }
}
