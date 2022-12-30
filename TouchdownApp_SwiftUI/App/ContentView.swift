//
//  ContentView.swift
//  TouchdownApp_SwiftUI
//
//  Created by Igor Ashurkov on 26.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Properties
    
    @EnvironmentObject var shop: Shop
    
    // MARK: Body
    var body: some View {
        ZStack {
            if self.shop.showingProduct == false, self.shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .background(.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 0) {
                            FeaturedTabView(model: Constant.players)
                                .padding(.vertical, 20)
                            
                            CategoryGridView(model: Constant.categories)
                            
                            TitleView(title: "Helmet")
                            
                            LazyVGrid(columns: Constant.gridLayout, spacing: 15) {
                                ForEach(Constant.products) { model in
                                    ProductItemView(model: model)
                                        .onTapGesture {
                                            Constant.feedback.impactOccurred()
                                            
                                            withAnimation(.easeOut) {
                                                self.shop.selectedProduct = model
                                                self.shop.showingProduct = true
                                            }
                                        }
                                } //: ForEach
                            } //: LazyVGrid
                            .padding(15)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView(model: Constant.brands)
                            
                            FooterView()
                                .padding(.horizontal)
                        } //: VStack
                    } //: ScrollView
                } //: VStack
                .background(Constant.colorBackground.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView(model: self.shop.selectedProduct ?? Constant.products[0])
            }
        } //: ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - PreviewProvider

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
