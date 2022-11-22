//
//  ContentView.swift
//  SwiftUISesi2
//
//  Created by Hidayat Abisena on 22/11/22.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            
            Image("bg-iphone")
                .resizable()
                .overlay {
                    Color.black
                        .opacity(0.6)
                }
                .ignoresSafeArea()
            
            VStack {
                headerView
                    .foregroundColor(.white)
                
                HStack(spacing: 15) {
                    PricingView(title: "Bronze", price: "$9", textColor: .white, bgColor: .blue, icon: "bell.and.waveform")
                        
                    
                    ZStack {
                        PricingView(title: "Silver", price: "$12", textColor: .white, bgColor: .purple, icon: "wand.and.rays.inverse")
                        
                        Text("Best for iOS Developer")
                            .font(.system(.caption, design: .rounded))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(5)
                            .background(.yellow)
                            .offset(x: 0, y: 100)
                        
                    } //: ZSTACK
                    
                } //: HSTACK
                Spacer()
            } //: VSTACK
            .padding(.horizontal)
        }
        
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

// MARK: - PRICING VIEW
struct PricingView: View {
    var title: String
    var price: String
    var textColor: Color
    var bgColor: Color
    var icon: String
    
    var body: some View {
        VStack {
            Image(systemName: icon)
                .font(.largeTitle)
                .foregroundColor(textColor)
            
            Text(title)
                .font(.system(size: 24, weight: .heavy, design: .rounded))
                .foregroundColor(textColor)
            
            Text(price)
                .font(.system(size: 24, weight: .heavy, design: .rounded))
                .foregroundColor(.white)
            
            Text("per-month")
                .font(.headline)
                .foregroundColor(textColor)
            
            
            
        } //: VSTACK
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
        .padding(40)
        .background(bgColor)
        .cornerRadius(10)
    }
}

// MARK: - EXTENSION
extension ContentView {
    private var headerView: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                
                Text("Pricing Plan")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
                
                Text("For you")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
            } //: VSTACK
            Spacer()
        } //: HSTACK
        .padding()
    }
}
