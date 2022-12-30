//
//  NavigationBarDetailView.swift
//  TouchdownApp_SwiftUI
//
//  Created by Igor Ashurkov on 30.12.2022.
//

import SwiftUI

struct NavigationBarDetailView: View {
    
    // MARK: Properties
    
    @EnvironmentObject var shop: Shop
    
    // MARK: Body
    var body: some View {
        HStack {
            Button(action: {
                Constant.feedback.impactOccurred()
                
                withAnimation(.easeIn) {
                    self.shop.selectedProduct = nil
                    self.shop.showingProduct = false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }) //: Button
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }) //: Button
        } //: HStack
    }
}

// MARK: - PreviewProvider

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(.gray)
            .environmentObject(Shop())
    }
}
