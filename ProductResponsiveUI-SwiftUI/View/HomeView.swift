//
//  HomeView.swift
//  ProductResponsiveUI-SwiftUI
//
//  Created by Nimish Mothghare on 02/05/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ResponsiveView { prop in
                   GeometryReader { geo in
                       if !prop.isLandscape && !prop.isiPadPortrait {
                           VStack(alignment: .leading) {
                               VStack {
                                   
                                   HStack {
                                       
                                       Image("images (4)")
                                           .resizable()
                                           .aspectRatio(contentMode: .fill)
                                           .frame(width: 50, height: 50)
                                           .clipShape(Circle())
                                       
                                       
                                       VStack(alignment: .leading) {
                                           
                                           Text("Hello Amesha Patel")
                                           Text("Check Amazing Products")

                                       }
                                       
                                       Spacer()
                                       
                                       Image(systemName: "bell")
                                           .resizable()
                                           .aspectRatio(contentMode: .fit)
                                           .frame(width: 20, height: 20)
                                           .padding()
                                           .background(Circle().fill(Color.white))
                                           .frame(width: 50, height: 50)
                                   }
                                   .padding(.horizontal,13)
                                   
                               }
                               .frame(maxWidth: .infinity)
                               .frame(height: geo.size.height * 0.27)
                               .background(Color.orange)
                               .clipShape(RoundedRectangle(cornerRadius: 16))
                               .ignoresSafeArea(.all)
                               
                               ScrollView(.vertical, showsIndicators: false) {
                                   VStack(alignment: .leading) {
                                       Text("Nimish Mothghare")
                                       Text("Nimish Mothghare")
                                       
                                   }
                                   .padding(.top, 20)
                               }
                               .offset(y: -geo.size.height * 0.07)
                           }
                       }
                       else if prop.isiPadPortrait {
                           EmptyView()
                       }
                       else {
                           EmptyView()
                       }
                   }
               }
    }
}

#Preview {
    HomeView()
}
