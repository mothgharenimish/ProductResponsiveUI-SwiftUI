//
//  CategoriesCard.swift
//  ProductResponsiveUI-SwiftUI
//
//  Created by Nimish Mothghare on 04/05/25.
//

import SwiftUI

struct CategoriesCard: View {
    
    var categorytext : String
    var body: some View {
        
        ZStack {
            
            Image("field-1851064_1280")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 110, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 20.0))
            
            Text(categorytext)
                .font(.custom("Rockwell", size: 24).bold())
                .foregroundStyle(.white)
                .padding(.horizontal, 20)
        }
    }
}

#Preview {
    CategoriesCard(categorytext: "Kids")
}
