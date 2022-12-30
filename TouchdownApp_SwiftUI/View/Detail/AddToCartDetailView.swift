//
//  AddToCartDetailView.swift
//  TouchdownApp_SwiftUI
//
//  Created by Igor Ashurkov on 30.12.2022.
//

import SwiftUI

struct AddToCartDetailView: View {
    
    // MARK: Properties
    
    let color: Color
    
    // MARK: Body
    var body: some View {
        Button(action: {
            
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })
        .padding(15)
        .background(self.color)
        .clipShape(Capsule())
    }
}

// MARK: - PreviewProvider

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView(color: Constant.products[0].backgroundColor)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
