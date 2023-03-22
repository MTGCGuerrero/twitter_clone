//
//  MainView.swift
//  Twitter_Clone
//
//  Created by MaCanMichis on 3/22/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack{
            TopBar()
            Home()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
