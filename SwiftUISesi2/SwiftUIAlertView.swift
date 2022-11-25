//
//  SwiftUIAlertView.swift
//  SwiftUISesi2
//
//  Created by Hidayat Abisena on 25/11/22.
//

import SwiftUI

struct SwiftUIAlertView: View {
    // MARK: - PROPERTIES
    @State private var showAlert: Bool = false
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Spacer()
            
            Button {
                showAlert = true
            } label: {
                Label {
                    Text("Share progress")
                        .fontWeight(.semibold)
                        .font(.title2)
                } icon: {
                    Image(systemName: "square.and.arrow.up")
                        .font(.title)
                }
            }
            .padding()
            .foregroundColor(.white)
            .padding(.horizontal, 24)
            .background(.blue)
            .cornerRadius(40)
            .alert("Warning",
                   isPresented: $showAlert) {
                Button {} label: {
                   Text("Confirm")
                }
                
                Button(role: .cancel) {
                    
                } label: {
                    Text("Cancel")
                }
            } message: {
                Text("Are you sure you want to share this progress?")
            }

            
            
        } //: VSATCK
    }
}

// MARK: - PREVIEW
struct SwiftUIAlertView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIAlertView()
    }
}
