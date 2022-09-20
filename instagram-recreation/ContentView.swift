//
//  ContentView.swift
//  p00-tiktok
//
//  Created by Samuel Shi on 9/15/22.
//

import SwiftUI

struct ContentView: View {
    private let navigationButtonDimension: CGFloat = 20
    private let navigationBarHorizontalSpacing: CGFloat = 28
    private let cursiveLogoWidth: CGFloat = 120

    var body: some View {
        NavigationView {
            FeedView(feed: .example)
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Text("Cursive Logo")
                    }

                    ToolbarItem(placement: .navigationBarTrailing) {
                        HStack(spacing: navigationBarHorizontalSpacing) {
                            Text("Plus")

                            Text("Heart")

                            Text("DM")
                        }
                    }
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
