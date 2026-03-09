//
//  BMIDetailView.swift
//  BMICalculator
//
//  Created by Daniel Ramirez on 08/03/26.
//

import SwiftUI

struct BMIDetailView: View {
    
    @ObservedObject var viewModel: BMICalculatorViewModel
    
    var body: some View {
        ZStack {
            viewModel.BMIColor.opacity(0.5)
                .ignoresSafeArea(.all)
            
            VStack(spacing: 16) {
                Text("Your BMI is: \(viewModel.BMI, specifier: "%.2f")")
                    .font(.title)
                Text(viewModel.BMIText)
                    .font(.headline)
            }
        }
    }
}

#Preview {
    BMIDetailView(viewModel: BMICalculatorViewModel())
}
