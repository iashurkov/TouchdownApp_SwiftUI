//
//  CategoryItemView.swift
//  TouchdownApp_SwiftUI
//
//  Created by Igor Ashurkov on 29.12.2022.
//

import SwiftUI

struct CategoryItemView: View {
    
    // MARK: Properties
    
    let model: Category
    
    // MARK: Body
    var body: some View {
        Button(action: {
            
        }, label: {
            HStack(alignment: .center, spacing: 6) {
                Image(self.model.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(self.model.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            } //: HStack
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }) //: Button
    }
}

// MARK: - PreviewProvider

struct CategoryItemView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItemView(model: Constant.categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Constant.colorBackground)
    }
}
