//
//  FeaturedTabView.swift
//  TouchdownApp_SwiftUI
//
//  Created by Igor Ashurkov on 29.12.2022.
//

import SwiftUI

struct FeaturedTabView: View {
    // MARK: Properties
    
    let model: [Player]
    
    // MARK: Body
    var body: some View {
        TabView {
            ForEach(self.model) { model in
                FeaturedItemView(model: model)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            } //: ForEach
        } //: TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

// MARK: - PreviewProvider

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView(model: Constant.players)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
