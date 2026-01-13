//
//  File.swift
//  ConversorMoedas
//
//  Created by Jonathan Amaral on 11/12/25.
//exchangeRate

import SwiftUI
struct Extract: View {
    let leftImage : ImageResource
    let text : String
    let rightImage : ImageResource
    
    var body: some View {
        
        HStack {
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            Text(text)
            
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}
#Preview {
    Extract(leftImage: .goldpenny, text: "1 OURO = 4 MOEDAS", rightImage: .goldpiece)
}
