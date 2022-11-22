//
//  ComponentButton.swift
//  SwiftUISesi2
//
//  Created by Hidayat Abisena on 22/11/22.
//

import SwiftUI

struct ComponentButton: View {
    var body: some View {
        VStack(spacing: 60) {
            Button {
                print("button tapped")
            } label: {
                Text("Sign in with Apple")
                    
            }
            
            Button {
                
            } label: {
                Text("Sign in with Google")
                    .foregroundColor(.purple)
            }

        }
        .font(.largeTitle)
        .foregroundColor(.yellow)
    }
}

struct ComponentButton_Previews: PreviewProvider {
    static var previews: some View {
        ComponentButton()
    }
}
