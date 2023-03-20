//
//  Fedd.swift
//  Twitter_Clone
//
//  Created by MaCanMichis on 3/19/23.
//

import SwiftUI

struct Feed: View {
    var body: some View {
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
            VStack(spacing: 18){
                
                TweetCellView(tweet: sampleText, tweetImage: "landscape")
                Divider()
                ForEach(1...20, id: \.self){ _ in
                    TweetCellView(tweet: sampleText)
                    Divider()
                    
                }
            }
            .padding(.top)
            .padding(.horizontal)
            .zIndex(0)
        })
    }
}

struct Fedd_Previews: PreviewProvider {
    static var previews: some View {
        Feed()
    }
}
