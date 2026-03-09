//
//  ContentView.swift
//  BMICalculator
//
//  Created by Daniel Ramirez on 08/03/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            BMICalculatorView()
                .navigationTitle("BMI Calculator")
        }
    }
}

#Preview {
    ContentView()
}
