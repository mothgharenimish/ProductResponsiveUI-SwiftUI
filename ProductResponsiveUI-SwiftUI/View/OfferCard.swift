//
//  OfferCard.swift
//  ProductResponsiveUI-SwiftUI
//
//  Created by Nimish Mothghare on 04/05/25.
//

import SwiftUI

struct OfferCard: View {
    let offers : OffersModel
    var body: some View {
        Image(offers.offerImg!)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: UIScreen.main.bounds.width - 90, height: 250)
            .clipShape(RoundedRectangle(cornerRadius: 20.0))
            .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.white, lineWidth: 3)
            )
            .shadow(radius: 20)
        
    }
}

#Preview {
    
   ContentView()
}
