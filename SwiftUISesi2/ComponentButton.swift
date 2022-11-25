//
//  ComponentButton.swift
//  SwiftUISesi2
//
//  Created by Hidayat Abisena on 22/11/22.
//

import SwiftUI

struct ComponentButton: View {
    var body: some View {
        VStack {
            Button {
                print("button tapped")
            } label: {
                Text("Hello iOS Developer")
                    .padding()
                    .background(.purple)
                    .foregroundColor(.white)
                
            }
            
            Button {
                
            } label: {
                Text("hello awesome developer")
                    .foregroundColor(.purple)
                    .font(.title)
                    .padding()
                    .border(.purple, width: 5)
            }
            
            Button {} label: {
                Text("Hello cool developer")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                    .background(.purple)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .padding(10)
                    .overlay {
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(.purple, lineWidth: 5)
                    }
            }
            
            Button {
                
            } label: {
                Image(systemName: "power.circle.fill")
                    .padding()
                    .background(.green)
                    .clipShape(Circle())
                    .font(.largeTitle)
                    .symbolRenderingMode(.hierarchical)
                    .foregroundColor(.white)
            }
            
            // iOS 14 keatas, SwiftUI 3
            Button {
                
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
            
            Button {
                
            } label: {
                Label {
                    Text("Add Stock")
                        .fontWeight(.semibold)
                        .font(.title)
                } icon: {
                    Image(systemName: "flame")
                        .font(.title)
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .foregroundColor(.white)
            .background(
                LinearGradient(colors: [Color.red, Color.yellow ,Color.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
            )
            .cornerRadius(40)
            .shadow(color: .gray, radius: 20, x: 20, y: 10)
            
        } //: VSTACK
        .padding()
    }
}

struct ComponentButton_Previews: PreviewProvider {
    static var previews: some View {
        ComponentButton()
    }
}
