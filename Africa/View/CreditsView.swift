//
//  CreditsView.swift
//  Africa
//
//  Created by Андрей Баитов on 15.06.21.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        
        VStack {
            Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
            Text("""
    Copyright © Baitau Andrei
    All right reserved
    Future genius ♡
    """)
                .font(.footnote)
                .multilineTextAlignment(.center)
        }//vstack
        .padding()
        .opacity(0.4)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
