//
//  TweetCellView.swift
//  Twitter_Clone
//
//  Created by MaCanMichis on 3/20/23.
//

import SwiftUI

struct TweetCellView: View {
    var tweet: String
    var tweetImage: String?
    var body: some View {
        VStack{
            HStack(alignment: .top, spacing: 10, content: {
                Image("logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 10, content: {
                    (
                    Text("Michi")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                    +
                    Text("@michisUI")
                        .foregroundColor(.gray)
                    )
                    Text(tweet)
                        .frame(maxHeight:100, alignment: .top)
                    if let image = tweetImage{
                        GeometryReader{ proxy in
                            Image(image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: proxy.frame(in: .global).width, height: 250)
                                .cornerRadius(15)
                        }.frame(height:250)
                    }
                    
                })
            })
            // Cell Bottom
            HStack(spacing: 50, content: {
                Button(action: {
                    
                }, label: {
                    Image("editComment").resizable()
                        .frame(width: 16, height: 16)
                }).foregroundColor(.gray)
                Button(action: {
                    
                }, label: {
                    Image("favorite").resizable()
                        .frame(width: 16, height: 16)
                }).foregroundColor(.gray)
                Button(action: {
                    
                }, label: {
                    Image("tweet").resizable()
                        .frame(width: 16, height: 16)
                }).foregroundColor(.gray)
                Button(action: {
                    
                }, label: {
                    Image("Messages").resizable()
                        .frame(width: 16, height: 16)
                }).foregroundColor(.gray)
            }).padding(.top,4)
        }
    }
}

struct TweetCellView_Previews: PreviewProvider {
    static var previews: some View {
        TweetCellView(tweet: sampleText)
    }
}


var sampleText = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
