//
//  SwiftUILink.swift
//  SwiftUISesi2
//
//  Created by Hidayat Abisena on 25/11/22.
//

import SwiftUI

struct SwiftUILink: View {
    @State private var showWebView: Bool = false
    
    var body: some View {
        VStack {
            // 1
            Link("Personal Website", destination: URL(string: "https://hidayatabisena.com")!)
                .foregroundColor(.orange)
                .font(.title)
                .fontWeight(.black)
            
            // cara 1 tapi pakai styling
            Link(destination: URL(string: "https://www.apple.com")!) {
                HStack {
                    Image(systemName: "applelogo")
                    Text("Sign in with Apple")
                }
                .frame(width: 250, height: 80)
                .foregroundColor(.white)
                .background(.black)
                .cornerRadius(10)
            }
            
            // cara ketiga dengan SafariServices
            Button {
                showWebView = true
            } label: {
                HStack {
                    Image(systemName: "heart")
                    Text("personal web")
                }
                .frame(width: 250, height: 80)
                .foregroundColor(.white)
                .background(.indigo)
                .cornerRadius(10)
            }
            .fullScreenCover(isPresented: $showWebView) {
                WebView(url: URL(string: "https://hidayatabisena.com")!)
            }

            
        } //: VSTACK
    }
}

struct SwiftUILink_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUILink()
    }
}
