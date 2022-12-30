//
//  TopPartDetailView.swift
//  TouchdownApp_SwiftUI
//
//  Created by Igor Ashurkov on 30.12.2022.
//

import SwiftUI

struct TopPartDetailView: View {
    
    // MARK: Properties
    
    let price: String
    let image: String
    
    @State private var isAnimating = false
    
    // MARK: Body
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            // Price
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(self.price)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }) //: VStack
            .offset(x: 0, y: self.isAnimating ? -50 : -75)
            
            Spacer()
            
            // Photo
            Image(self.image)
                .resizable()
                .scaledToFit()
                .offset(x: 0, y: self.isAnimating ? 0 : -35)
        }) //: HStack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                self.isAnimating.toggle()
            }
        })
    }
}

// MARK: - PreviewProvider

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView(price: Constant.products[0].formattedPrice,
                          image: Constant.products[0].image)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
