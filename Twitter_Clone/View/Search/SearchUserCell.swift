//
//  SearchUserCell.swift
//  Twitter_Clone
//
//  Created by MaCanMichis on 3/20/23.
//

import SwiftUI

struct SearchUserCell: View {
    var body: some View {
        HStack{
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 44, height: 44)
                .clipShape(Circle())
            VStack(alignment: .leading){
                Text("MichisUI")
                    .fontWeight(.heavy)
                Text("@Michis")
            }
            Spacer(minLength: 0)
        }
    }
}

struct SearchUserCell_Previews: PreviewProvider {
    static var previews: some View {
        SearchUserCell()
    }
}
