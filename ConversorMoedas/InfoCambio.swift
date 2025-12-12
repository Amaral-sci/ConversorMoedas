//
//  InfoCambio.swift
//  ConversorMoedas
//
//  Created by Jonathan Amaral on 09/12/25.
//

import SwiftUI

struct InfoCambio: View {
    var body: some View {
        ZStack {
            Image (.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(Color(.brown))
            	
            VStack{
                Text ( "TAXAS DE CAMBIO")
                    .font(.largeTitle)
                    .tracking(5)
                Text ("     Aqui no Conversor de Moedas, estamos felizes em oferecer a você um lugar onde pode trocar todas as moedas conhecidas em todo o mundo, exceto uma. Costumávamos levar Brandy Bucks, mas depois de descobrir que era uma pessoa em vez de um pedaço de papel, percebemos que não tinha valor para nós. Abaixo está um guia simples para nossas taxas de câmbio:")
                    .font(.headline)
                    .padding()
                
                Extract(leftImage: .goldpiece, text: "1 OURO = 4 MOEDAS", rightImage: .goldpenny)
                
                Extract(leftImage: .goldpenny, text: "1 OURO = 4 MOEDAS", rightImage: .silverpiece)
                
                Extract(leftImage: .silverpiece, text: "1 OURO = 4 MOEDAS", rightImage: .silverpenny)
                
                Extract(leftImage: .silverpenny, text: "1 OURO = 100 MOEDAS", rightImage: .copperpenny)
                
                Button(" OK ")
                {
                    
                }
                .buttonStyle(BorderedProminentButtonStyle() )
                .tint(.brown.mix(with: .black, by: 0.2))
                .padding()
                .font(Font.largeTitle)
                .foregroundStyle(.white)
            }
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    InfoCambio()
}
