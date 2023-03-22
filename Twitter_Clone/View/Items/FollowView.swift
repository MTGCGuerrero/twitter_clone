//
//  FollowView.swift
//  Twitter_Clone
//
//  Created by MaCanMichis on 3/22/23.
//

import SwiftUI

struct FollowView: View {
    
    var count: Int
    var title: String
    
    var body: some View {
        HStack{
            Text("\(count)")
                .fontWeight(.bold)
                .foregroundColor(.black)
            Text(title)
                .foregroundColor(.gray)
        }
    }
}


