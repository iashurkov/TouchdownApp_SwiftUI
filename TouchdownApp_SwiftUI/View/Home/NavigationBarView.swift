//
//  NavigationBarView.swift
//  TouchdownApp_SwiftUI
//
//  Created by Igor Ashurkov on 29.12.2022.
//

import SwiftUI

struct NavigationBarView: View {
    
    // MARK: Properties
    
    @State private var isAnimated = false
    
    // MARK: Body
    var body: some View {
        HStack {
            Button(action: {
                
            }, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            }) //: Button
            
            Spacer()
            
            LogoView()
                .opacity(self.isAnimated ? 1 : 0)
                .offset(x: 0, y: self.isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        self.isAnimated.toggle()
                    }
                })
            
            Spacer()
            
            Button(action: {
                
            }, label: {
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                    .foregroundColor(.black)
                    
                    Circle()
                        .fill(.red)
                        .frame(width: 14, height: 14, alignment: .center)
                        .offset(x: 13, y: -10)
                } //: ZStack
            }) //: Button
        } //: HStack
    }
}

// MARK: - PreviewProvider

struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
