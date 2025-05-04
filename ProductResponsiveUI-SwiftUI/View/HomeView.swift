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
                               .background(Color.green)
                               .clipShape(RoundedRectangle(cornerRadius: 16))
                               .ignoresSafeArea(.all)
                               
                               ScrollView(.vertical, showsIndicators: false) {
                                   VStack(alignment: .center,spacing: 20) {
                                       Text("Products Special Offers")
                                           .font(.custom("Rockwell", size: 17))
                                                  .padding(.horizontal, 20)
                                       
                                       ScrollView(.horizontal, showsIndicators: false) {
                                           HStack(spacing: 25) {
                                               ForEach(0..<offers.count, id: \.self) { index in
                                                   OfferCard(offers: offers[index])
                                                       .scrollTransition { content, phase in
                                                           content
                                                               .opacity(phase.isIdentity ? 1 : 1)
                                                               .scaleEffect(y: phase.isIdentity ? 1 : 0.7)
                                                       }
                                               }
                                           }
                                           .scrollTargetLayout()
                                       }
                                       .contentMargins(45, for: .automatic)
                                       .scrollTargetBehavior(.viewAligned)
                                       .offset(y: -geo.size.height * 0.06)
                                   }
                                   .padding(.top, 20)
                                   
                                   
                                   VStack(alignment: .leading){
                                       Text("Product Categories")
                                           .font(.custom("Rockwell", size: 17))
                                                  .padding(.horizontal, 20)
                                                  .frame(maxWidth: .infinity, alignment: .leading)
                                       
                                       
                                     
                                   }
                                   .offset(y: -geo.size.height * 0.09)

                               }
                               .offset(y: -geo.size.height * 0.08)
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
