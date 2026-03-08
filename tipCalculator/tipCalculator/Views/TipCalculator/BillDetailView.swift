//
//  BillDetailView.swift
//  tipCalculator
//
//  Created by Daniel Ramirez on 07/03/26.
//

import SwiftUI

struct BillDetailView: View {
    
    @ObservedObject var viewModel: TipCalculatorViewModel
    
    var body: some View {
        ZStack {
            Color.cyan.opacity(0.1)
                .ignoresSafeArea(.all)
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Monto a pagar: $\(viewModel.billAmount)")
                Text("Propina: $\(viewModel.tipAmount, specifier:"%.2f")")
                Text("Total a pagar: $\(viewModel.totalAmout, specifier:"%.2f")")
                
            }
            .padding()
            .font(.headline)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    BillDetailView(viewModel: TipCalculatorViewModel())
}
