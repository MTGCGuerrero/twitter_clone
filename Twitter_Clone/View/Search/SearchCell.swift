//
//  SearchCell.swift
//  Twitter_Clone
//
//  Created by MaCanMichis on 3/20/23.
//

import SwiftUI

struct SearchCell: View {
    var tag = ""
    var tweets = ""
    var body: some View {
        
        VStack(alignment: .leading, spacing: 5, content: {
            Text("").fontWeight(.heavy)
            Text(tweets + "Tweets").fontWeight(.light)
        })
    }
}

struct SearchCell_Previews: PreviewProvider {
    static var previews: some View {
        SearchCell()
    }
}
