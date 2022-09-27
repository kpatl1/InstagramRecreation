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
        VStack(alignment: .leading, spacing:mainVStackVerticalSpacing){
            authorDetails
            mainImage
            engagementView
            postInformation
        }
    }
    
    // MARK: Author Details
    
    private var authorDetails: some View {
        HStack(spacing:authorDetailsHorizontalSpacing){
            
            Image(post.author.profilePictureName).resizableSquare(dimension: profilePictureDimension)
                .clipShape(Circle())
            
            
            
            Text(post.author.username)
                .font(.subheadline)
                .bold()
            
            NavigationLink(destination: DirectMessagesView()) {
                Image(systemName: "ellipsis")
                    .resizableSquare(dimension: 16)
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .offset(x: -16)
                    .foregroundColor(.primary)
            }
        }
        .offset(x: authorDetailsHorizontalSpacing)
    }
    
    // MARK: Main Image
    
    private var mainImage: some View {
        Image(post.imageName).resizableSquare(dimension: UIScreen.main.bounds.width)
    }
    
    // MARK: Engagement View
    
    private var engagementView: some View {
        HStack(spacing: engagementViewHorizontalSpacing){
            
            Button(action: {isLiked.toggle()}, label: {
                Image(systemName: isLiked ?
                      "heart.fill" : "heart")
                .resizableSquare(dimension: engagementButtonDimension)
                .foregroundColor(isLiked ? .red : .primary)
            }
            )
            
            NavigationLink(destination: CommentsView()) {
                Image(systemName: "message")
                    .resizableSquare(dimension: engagementButtonDimension)
                    .foregroundColor(.primary)
            }
            
            NavigationLink(destination: ShareView()) {
                Image(systemName: "paperplane")
                    .resizableSquare(dimension: engagementButtonDimension)
                    .foregroundColor(.primary)
            }
            
            Button(action: {isSaved.toggle()}, label: {
                Image(systemName: isSaved ?
                      "bookmark.fill" : "bookmark")
                .resizableSquare(dimension: engagementButtonDimension)
                .foregroundColor(.primary)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .offset(x: -16)
            }
            )
            
        }
        .offset(x:8)
    }
    
    // MARK: Post Information
    
    private var postInformation: some View {
        VStack(alignment: .leading){
            Text(String(post.likeCount) + " likes")
            
                .font(.footnote)
                .fontWeight(.semibold)
            
            Text(post.author.username).font(.footnote).bold() + Text(" ") +  Text(post.caption).font(.footnote)
            
            
        }
        .frame(width: UIScreen.main.bounds.width - 16)
        .offset(x:8)
        
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
