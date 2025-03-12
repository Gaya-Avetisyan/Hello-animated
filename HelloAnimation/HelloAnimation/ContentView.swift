//
//  ContentView.swift
//  HelloAnimation
//
//  Created by Gayane Avetisyan on 12.03.25.
//

import SwiftUI


struct ContentView: View {
    @State private var isAnimating = false

    var body: some View {
        Text("Gayane presents")
            .font(.largeTitle)
            .bold()
            .opacity(isAnimating ? 7 : 0)  // Fade in effect
            .scaleEffect(isAnimating ? 1 : 0.5)  // Zoom effect
            .animation(.easeIn(duration: 4), value: isAnimating)  // Animate changes
            .onAppear {
                isAnimating = true
            }
    }
}

#Preview {
    ContentView()
}
