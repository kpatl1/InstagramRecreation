//
//  PostView.swift
//  p00-tiktok
//
//  Created by Samuel Shi on 9/15/22.
//

import SwiftUI

// MARK: PostView

struct PostView: View {
    @State private var isLiked = false
    @State private var isSaved = false
    
    let post: Post
    
    // Constants
    private let profilePictureDimension: CGFloat = 32
    private let engagementButtonDimension: CGFloat = 24
    private let engagementViewHorizontalSpacing: CGFloat = 16
    private let authorDetailsHorizontalSpacing: CGFloat = 8
    private let postInformationVerticalSpacing: CGFloat = 8
    private let mainVStackVerticalSpacing: CGFloat = 8
    private let padding: CGFloat = 12
    
    // MARK: Body

    var body: some View {
        Text("Hello, World!")
    }
    
    // MARK: Author Details

    private var authorDetails: some View {
        Text("Hello, World!")
    }
    
    // MARK: Main Image
    
    private var mainImage: some View {
        Text("Hello, World!")
    }
    
    // MARK: Engagement View
    
    private var engagementView: some View {
        Text("Hello, World!")
    }
    
    // MARK: Post Information
    
    private var postInformation: some View {
        Text("Hello, World!")
    }
}

// MARK: Previews

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            PostView(post: .example)
        }
    }
}
