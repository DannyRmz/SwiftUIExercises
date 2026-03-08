//
//  ContentView.swift
//  tipCalculator
//
//  Created by Daniel Ramirez on 07/03/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            TipCalculatorView()
                .navigationTitle("Tip Calculator")
        }
    }
}

#Preview {
    ContentView()
}
