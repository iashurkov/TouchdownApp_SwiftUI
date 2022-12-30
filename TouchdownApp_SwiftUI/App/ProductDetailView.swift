//
//  ProductDetailView.swift
//  TouchdownApp_SwiftUI
//
//  Created by Igor Ashurkov on 30.12.2022.
//

import SwiftUI

struct ProductDetailView: View {
    
    // MARK: Properties
    let model: Product
    
    // MARK: Body
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            // NavBar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // Header
            HeaderDetailView(title: self.model.name)
                .padding(.horizontal)
            
            // Detail Top Part
            TopPartDetailView(price: self.model.formattedPrice,
                              image: self.model.image)
                .padding(.horizontal)
                .zIndex(1)
            
            // Detail Bottom Part
            VStack(alignment: .center, spacing: 0, content: {
                // Rating + Sizes
                RatingsSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                // Description
                ScrollView(.vertical, showsIndicators: false, content: {
                    Text(self.model.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                }) //: ScrollView
                
                // Quantity + favourite
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                
                // Add to cart
                AddToCartDetailView(color: self.model.backgroundColor)
                    .padding(.bottom, 20)
            }) //: VStack
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
        }) //: VStack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(self.model.backgroundColor).ignoresSafeArea(.all, edges: .all)
    }
}

// MARK: - PreviewProvider

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(model: Constant.products[0])
    }
}
