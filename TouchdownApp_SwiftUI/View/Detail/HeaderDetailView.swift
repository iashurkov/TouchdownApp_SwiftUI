//
//  HeaderDetailView.swift
//  TouchdownApp_SwiftUI
//
//  Created by Igor Ashurkov on 30.12.2022.
//

import SwiftUI

struct HeaderDetailView: View {
    
    // MARK: Properties
    
    let title: String
    
    // MARK: Body
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            Text("Protective Gear")
            
            Text(self.title)
                .font(.largeTitle)
                .fontWeight(.black)
        }) //: VStack
        .foregroundColor(.white)
    }
}

// MARK: - PreviewProvider

struct HeaderDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailView(title: "Header")
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
    }
}
