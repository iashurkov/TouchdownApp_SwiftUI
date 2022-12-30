//
//  QuantityFavouriteDetailView.swift
//  TouchdownApp_SwiftUI
//
//  Created by Igor Ashurkov on 30.12.2022.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    
    // MARK: Properties
    
    @State private var counter = 0
    
    // MARK: Body
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                if self.counter > 0 {
                    self.counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            }) //: Button
            
            Text("\(self.counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button(action: {
                if self.counter < 100 {
                    self.counter += 1
                }
            }, label: {
                Image(systemName: "plus.circle")
            }) //: Button
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }) //: Button
        }) //: HStack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

// MARK: - PreviewProvider

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
