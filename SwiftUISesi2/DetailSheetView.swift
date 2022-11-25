//
//  DetailSheetView.swift
//  SwiftUISesi2
//
//  Created by Hidayat Abisena on 25/11/22.
//

import SwiftUI

struct DetailSheetView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                CategoryItemView(title: "Walk", icon: "figure.walk.motion", color: .green, bgColor: .purple)
                
                CategoryItemView(title: "Food", icon: "fork.knife.circle.fill", color: .orange, bgColor: .green)
                
                CategoryItemView(title: "Stay", icon: "house.fill", color: .blue, bgColor: .red)
                
                CategoryItemView(title: "Ride", icon: "sailboat.fill", color: .indigo, bgColor: .yellow)
                
                CategoryItemView(title: "Walk", icon: "figure.walk.motion", color: .green, bgColor: .purple)
                
            } //: HSTACK
        }
    }
}

struct DetailSheetView_Previews: PreviewProvider {
    static var previews: some View {
        DetailSheetView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

struct CategoryItemView: View {
    var title: String
    var icon: String
    var color: Color
    var bgColor: Color
    
    var body: some View {
        HStack(spacing: 20) {
            VStack(alignment: .center, spacing: 8) {
                Image(systemName: icon)
                    .symbolRenderingMode(.multicolor)
                    .font(.system(size: 24))
                    .foregroundColor(color)
                
                Text(title)
                    .foregroundColor(.white)
            }
            
        } //: HSTACK
        .frame(width: 50, height: 50)
        .padding()
        .background(bgColor)
        .cornerRadius(60)
    }
}
