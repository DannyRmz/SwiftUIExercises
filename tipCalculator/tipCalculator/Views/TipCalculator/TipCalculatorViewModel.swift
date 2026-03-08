//
//  TipCalculatorViewModel.swift
//  tipCalculator
//
//  Created by Daniel Ramirez on 07/03/26.
//

import Foundation
import Combine

final class TipCalculatorViewModel: ObservableObject {
    @Published var billAmount: String = ""
    @Published var tipPercentage: TipPercentage = .tenPercent
    @Published var calculate: Bool = false
    
    enum TipPercentage: Double, CaseIterable {
        case tenPercent = 10
        case fifteenPercent = 15
        case twentyPercent = 20
        
    }
    
    var tipAmount: Double {
        (Double(billAmount) ?? 0.0) * tipPercentage.rawValue / 100
    }
    
    var totalAmout: Double {
        (Double(billAmount) ?? 0.0) + tipAmount
    }
    
}
