//
//  ContentView.swift
//  p00-tiktok
//
//  Created by Samuel Shi on 9/15/22.
//k

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
                        Image("cursive-logo")
                            .resizable()
                            .resizableSquare(dimension: cursiveLogoWidth)
                    }
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        HStack(spacing: navigationBarHorizontalSpacing) {
                            
                            
                            NavigationLink(destination: NewPostView()) {
                                Image(systemName: "plus.square")
                                    .resizableSquare(dimension: navigationButtonDimension)
                                    .foregroundColor(.primary)
                            }
                            
                            NavigationLink(destination: NotificationView()) {
                                Image(systemName: "heart")
                                    .resizableSquare(dimension: navigationButtonDimension)
                                    .foregroundColor(.primary)
                            }
                            NavigationLink(destination: DirectMessagesView()) {
                                Image(systemName: "message")
                                    .resizableSquare(dimension: navigationButtonDimension)
                                    .foregroundColor(.primary)
                            }
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
