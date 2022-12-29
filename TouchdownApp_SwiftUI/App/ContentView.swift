//
//  ContentView.swift
//  TouchdownApp_SwiftUI
//
//  Created by Igor Ashurkov on 26.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Properties
    
    // MARK: Body
    var body: some View {
        ZStack {
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
                            .frame(height: 240, alignment: .center)
                            .padding(.vertical, 20)
                        
                        FooterView()
                            .padding(.horizontal)
                    } //: VStack
                } //: ScrollView
            } //: VStack
            .background(Constant.colorBackground.ignoresSafeArea(.all, edges: .all))
        } //: ZStack
        .ignoresSafeArea(.all, edges: .top)
    }
}

// MARK: - PreviewProvider

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
