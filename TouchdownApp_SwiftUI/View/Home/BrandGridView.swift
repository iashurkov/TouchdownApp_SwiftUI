//
//  BrandGridView.swift
//  TouchdownApp_SwiftUI
//
//  Created by Igor Ashurkov on 30.12.2022.
//

import SwiftUI

struct BrandGridView: View {
    
    // MARK: Properties
    
    let model: [Brand]
    
    // MARK: Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: Constant.gridLayout, spacing: Constant.columnSpacing) {
                ForEach(model) { model in
                    BrandItemView(model: model)
                } //: ForEach
            } //: LazyHGrid
            .frame(height: 200)
            .padding(15)
        } //: ScrollView
    }
}

// MARK: - PreviewProvider

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView(model: Constant.brands)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Constant.colorBackground)
    }
}
