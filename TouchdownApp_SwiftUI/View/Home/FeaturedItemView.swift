//
//  FeaturedItemView.swift
//  TouchdownApp_SwiftUI
//
//  Created by Igor Ashurkov on 29.12.2022.
//

import SwiftUI

struct FeaturedItemView: View {
    
    // MARK: Properties
    
    let model: Player
    
    // MARK: Body
    var body: some View {
        Image(self.model.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

// MARK: - PreviewProvider

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(model: Constant.players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Constant.colorBackground)
    }
}
