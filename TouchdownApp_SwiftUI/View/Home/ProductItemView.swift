//
//  ProductItemView.swift
//  TouchdownApp_SwiftUI
//
//  Created by Igor Ashurkov on 30.12.2022.
//

import SwiftUI

struct ProductItemView: View {
    
    // MARK: Properties
    
    let model: Product
    
    // MARK: Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            // Photo
            ZStack {
                Image(self.model.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            } //: ZStack
            .background(self.model.backgroundColor)
            .cornerRadius(12)
            
            // Name
            Text(self.model.name)
                .font(.title3)
                .fontWeight(.black)
            
            // Price
            Text(self.model.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
        } //: VStack
    }
}

// MARK: - PreviewProvider

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(model: Constant.products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(Constant.colorBackground)
    }
}
