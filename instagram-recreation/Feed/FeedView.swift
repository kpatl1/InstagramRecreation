//
//  FeedView.swift
//  p00-tiktok
//
//  Created by Samuel Shi on 9/15/22.
//

import SwiftUI

struct FeedView: View {
    let feed: Feed
    
    private let feedVerticalSpacing: CGFloat = 8
    
    var body: some View {
        ScrollView{
            ForEach(feed.posts, id: \.id)
            {(post) in
                PostView(post: post)
            }
        }
        
    }
    
    struct FeedView_Previews: PreviewProvider {
        static var previews: some View {
            FeedView(feed: .example)
        }
    }
}
