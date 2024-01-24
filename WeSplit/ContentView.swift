//
//  ContentView.swift
//  WeSplit
//
//  Created by Jeric Hernandez on 4/9/23.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0

    var body: some View {
        Button("Tap Count \(tapCount)") {
            tapCount += 1
        }
    }
}

#Preview {
    ContentView()
}
