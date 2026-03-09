//
//  BMICalculatorViewModel.swift
//  BMICalculator
//
//  Created by Daniel Ramirez on 08/03/26.
//

import SwiftUI
import Combine

final class BMICalculatorViewModel: ObservableObject {
    @Published var weight: String = ""
    @Published var height: String = ""
    @Published var calculate: Bool = false
    
    var BMI: Double {
        (Double(weight) ?? 0.0) / ((Double(height) ?? 0.0) * (Double(height) ?? 0.0))
    }
    
    var BMIText: String {
        switch BMI {
        case ..<18.5: return "Underweight"
        case 18.5..<25: return "Normal"
        case 25..<30: return "Overweight"
        case 30..<35: return "Obese Class I"
        case 35..<40: return "Obese Class II"
        case 40..<50: return "Obese Class III"
        default: return "Obese Class IV"
        }
    }
    
    var BMIColor: Color {
        switch BMI {
        case ..<18.5: return .cyan
        case 18.5..<25: return .green
        case 25..<30: return .orange
        case 30..<35: return .red
        case 35..<40: return .red
        case 40..<50: return .brown
        default: return .brown
        }
    }
}
