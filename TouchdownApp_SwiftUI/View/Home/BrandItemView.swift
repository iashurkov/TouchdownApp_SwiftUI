//
//  BrandItemView.swift
//  TouchdownApp_SwiftUI
//
//  Created by Igor Ashurkov on 30.12.2022.
//

import SwiftUI

struct BrandItemView: View {
    
    // MARK: Properties
    
    let model: Brand
    
    // MARK: Body
    var body: some View {
        Image(self.model.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1)
            )
    }
}

// MARK: - PreviewProvider

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(model: Constant.brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Constant.colorBackground)
    }
}
