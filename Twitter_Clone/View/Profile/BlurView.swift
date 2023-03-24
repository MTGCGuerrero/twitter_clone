//
//  BlurView.swift
//  Twitter_Clone
//
//  Created by MaCanMichis on 3/24/23.
//

import SwiftUI


struct BlurView: UIViewRepresentable{
    
    func makeUIView(context: Context) -> UIVisualEffectView{
        let view = UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterialDark))
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        // Nothing
    }
    
    
}
