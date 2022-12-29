//
//  CategoryGridView.swift
//  TouchdownApp_SwiftUI
//
//  Created by Igor Ashurkov on 29.12.2022.
//

import SwiftUI

struct CategoryGridView: View {
    
    // MARK: Properties
    
    let model: [Category]
    
    // MARK: Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: Constant.gridLayout,
                      alignment: .center,
                      spacing: Constant.columnSpacing,
                      pinnedViews: [],
                      content: {
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)
                ) {
                    ForEach(self.model) { model in
                        CategoryItemView(model: model)
                    } //: ForEach
                } //: Section
            }) //: LazyHGrid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }) //: ScrollView
    }
}

// MARK: - PreviewProvider

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView(model: Constant.categories)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Constant.colorBackground)
    }
}
