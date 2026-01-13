//
//  Extract4.swift
//  ConversorMoedas
//
//  Created by Jonathan Amaral on 17/12/25.
//currency
import SwiftUI

enum Extract4: Double, CaseIterable, Identifiable {
    case copperPenny = 6400
    case silverPenny = 64
    case goldPenny = 16
    case goldPiece = 4
    case silverPiece = 1
    
    var id: Extract4 { self }
     
    var image: ImageResource {
        switch self {
        case .copperPenny:
                .copperpenny
        case .silverPenny:
                .silverpenny
        case .goldPenny:
                .goldpenny
        case .goldPiece:
                .goldpiece
        case .silverPiece:
                .silverpiece
            }
        }
    var name: String {
        switch self {
        case .copperPenny:
            "Copper Penny"
        case .silverPenny:
            "Silver Penny"
        case .goldPenny:
            "Gold Penny"
        case .goldPiece:
            "Gold Piece"
        case .silverPiece:
            "Silver Piece"
        }
    }
    //formas mais faceis de falar o codigo"
        func convert (_ amountString: String,to currency: Extract4) -> String {
            guard let doubleAmount = Double(amountString) else { return "" }
            let convertedAmount = (doubleAmount / self.rawValue) * currency.rawValue
            return String(format: "%.2f", convertedAmount)
            }
        
    }

