//
//  RatingsSizesDetailView.swift
//  TouchdownApp_SwiftUI
//
//  Created by Igor Ashurkov on 30.12.2022.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    
    // MARK: Properties
    
    private let sizes = ["XS", "S", "M", "L", "XL"]
    
    // MARK: Body
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            // Ratings
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(Constant.colorGray)
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "star.fill")
                                .foregroundColor(.white)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Constant.colorGray.cornerRadius(5))
                        }) //: Button
                    } //: ForEach
                }) //: HStack
            }) //: VStack
            
            Spacer()
            
            // Sizes
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(Constant.colorGray)
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(self.sizes, id: \.self) { item in
                        Button(action: {
                            
                        }, label: {
                            Text(item)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(Constant.colorGray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(Constant.colorGray, lineWidth: 2)
                                )
                        }) //: Button
                    } //: ForEach
                }) //: HStack
            }) //: VStack
        }) //: HStack
    }
}

// MARK: - PreviewProvider

struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
