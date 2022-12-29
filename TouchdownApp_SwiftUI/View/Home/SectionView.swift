//
//  SectionView.swift
//  TouchdownApp_SwiftUI
//
//  Created by Igor Ashurkov on 29.12.2022.
//

import SwiftUI

struct SectionView: View {
    
    // MARK: Properties
    
    @State var rotateClockwise: Bool
    
    // MARK: Body
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: self.rotateClockwise ? 90 : -90))
            
            Spacer()
        } //: VStack
        .background(Constant.colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

// MARK: - PreviewProvider

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(Constant.colorBackground)
    }
}
