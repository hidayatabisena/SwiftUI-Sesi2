//
//  SwiftUIState.swift
//  SwiftUISesi2
//
//  Created by Hidayat Abisena on 25/11/22.
//

import SwiftUI

struct SwiftUIState: View {
    // MARK: - PROPERTIES
    @State private var isPlaying: Bool = false
    @State private var counterPlayerOne: Int = 1
    @State private var counterPlayerTwo: Int = 1
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Button {
                isPlaying.toggle()
            } label: {
                Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
                    .font(.system(size: 150))
                    .foregroundColor(isPlaying ? .green : .indigo)
            }
            
            ListPlayerScore(counterPlayerOne: $counterPlayerOne, counterPlayerTwo: $counterPlayerTwo)
            
        } //: VSTACK
    }
}

// MARK: - PREVIEW
struct SwiftUIState_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIState()
    }
}

// MARK: - PLAYER SCORE
struct ListPlayerScore: View {
    @Binding var counterPlayerOne: Int
    @Binding var counterPlayerTwo: Int
    
    var body: some View {
        List {
            HStack {
                Text("Counter Player One")
                Spacer()
                Text("\(counterPlayerOne)")
            }
            .onTapGesture {
                counterPlayerOne += 1
            }
            
            HStack {
                Text("Counter Player Two")
                Spacer()
                Text("\(counterPlayerTwo)")
            }
            .onTapGesture {
                counterPlayerTwo += 1
            }
        }
    }
}
