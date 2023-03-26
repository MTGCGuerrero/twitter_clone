//
//  SecureAuthTextfield.swift
//  Twitter_Clone
//
//  Created by MaCanMichis on 3/26/23.
//

import SwiftUI

struct SecureAuthTextfield: View {
    var placeholder: String
    @Binding var text: String
    var body: some View {
        VStack{
            ZStack(alignment: .leading, content: {
                if text.isEmpty{
                    Text(placeholder)
                        .foregroundColor(.gray)
                }
                SecureField("",text: $text)
                    .frame(height: 45)
                    .foregroundColor(Color("bg"))
            })
            Rectangle()
                .frame(width: 1,alignment: .center)
                .foregroundColor(.gray)
                .padding(.top,-2)
        }
        .padding(.horizontal)
    }
}
//struct SecureAuthTextfield_Previews: PreviewProvider {
//    static var previews: some View {
//        SecureAuthTextfield()
//    }
//}
