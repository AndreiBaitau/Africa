//
//  CenterModifier.swift
//  Africa
//
//  Created by Андрей Баитов on 15.06.21.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
