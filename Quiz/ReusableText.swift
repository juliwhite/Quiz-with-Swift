//
//  ReusableText.swift
//  Quiz
//
//  Created by Julieta White on 3/3/23.
//

import Foundation
import SwiftUI

struct ReusableText: View{
    var text : String
    var body: some View{
        Text(text)
            .foregroundColor(.black)
            .padding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(RoundedRectangle(cornerRadius: 8)
                .stroke(Color.purple, lineWidth: 2))
            .background(Color.white)
    }
}
