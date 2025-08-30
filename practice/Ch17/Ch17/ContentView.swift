//
//  ContentView.swift
//  Ch17
//
//  Created by Pansoo Kim on 8/30/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .font(.largeTitle)
                .foregroundColor(.red)
            Button("1111") {
            }
            .font(.largeTitle)

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
