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
        FooterView()
            .padding(.horizontal)
    }
}

// MARK: - PreviewProvider

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
