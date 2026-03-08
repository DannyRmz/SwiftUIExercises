//
//  TipCalculatorView.swift
//  tipCalculator
//
//  Created by Daniel Ramirez on 07/03/26.
//

import SwiftUI

struct TipCalculatorView: View {
    
    @StateObject private var viewModel = TipCalculatorViewModel()
    typealias TipPercentage = TipCalculatorViewModel.TipPercentage
    
    var body: some View {
        ZStack {
            Color.cyan.opacity(0.1)
                .ignoresSafeArea(.all)
            
            VStack(spacing: 32) {
                VStack(alignment: .leading) {
                    Text("Monto total")
                        .font(.headline)
                    TextField("Ingrese la cantidad", text: $viewModel.billAmount)
                        .keyboardType(.decimalPad)
                        .padding()
                        .background(.gray.opacity(0.1))
                        .clipShape(RoundedRectangle(cornerRadius: 16.0))
                }
                
                
                Picker("Propina", selection: $viewModel.tipPercentage) {
                    ForEach(TipPercentage.allCases, id: \.self) { tip in
                        Text("\(tip.rawValue, specifier:"%.0f")%")
                    }
                }
                .pickerStyle(.segmented)
                
                Button("Calcular") {
                    viewModel.calculate = true
                }
                .buttonStyle(.borderedProminent)
                .tint(Color.cyan)
                .frame(maxWidth: .infinity)
                .disabled(viewModel.billAmount.isEmpty)
                .navigationDestination(isPresented: $viewModel.calculate) {
                    BillDetailView(viewModel: viewModel)
                        .navigationTitle("Bill Detail")
                }
            }
            .padding()
        }
    }
}

#Preview {
    NavigationStack {
        TipCalculatorView()
            .navigationBarTitle("Tip Calculator")
    }
}
