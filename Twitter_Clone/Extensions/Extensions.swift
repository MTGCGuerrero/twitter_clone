//
//  Extensions.swift
//  Twitter_Clone
//
//  Created by MaCanMichis on 3/20/23.
//

import UIKit


extension UIApplication {
    func endEditing(){
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
