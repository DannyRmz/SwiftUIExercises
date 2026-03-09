//
//  BMICalculatorView.swift
//  BMICalculator
//
//  Created by Daniel Ramirez on 08/03/26.
//

import SwiftUI

struct BMICalculatorView: View {
    
    @StateObject private var viewModel = BMICalculatorViewModel()
    
    var body: some View {
        ZStack {
            Color.cyan.opacity(0.1)
                .ignoresSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Weight")
                    .font(.headline)
                HStack {
                    TextField("Weight", text: $viewModel.weight)
                        .padding()
                        .background(.gray.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        .keyboardType(.decimalPad)
                    
                    Text("Kg")
                }
                
                Text("Height")
                    .font(.headline)
                HStack {
                    TextField("Height", text: $viewModel.height)
                        .padding()
                        .background(.gray.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                        .keyboardType(.decimalPad)
                    
                    Text("m")
                }
                
                Button("Calculate") {
                    viewModel.calculate = true
                }
                .buttonStyle(.borderedProminent)
                .tint(.cyan)
                .frame(maxWidth: .infinity)
                .padding()
                .disabled(viewModel.weight.isEmpty || viewModel.height.isEmpty)
                .navigationDestination(isPresented: $viewModel.calculate) {
                    BMIDetailView(viewModel: viewModel)
                        .navigationTitle("BMI Detail")
                }
            }
            .padding()
        }
    }
}

#Preview {
    NavigationStack {
        BMICalculatorView()
            .navigationTitle("BMI Calculator")
    }
}
