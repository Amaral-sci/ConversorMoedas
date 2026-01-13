//
//  Extract2.swift
//  ConversorMoedas
//
//  Created by Jonathan Amaral on 12/12/25.
//
//selectCurrency do video
import SwiftUI

struct Extract2: View {
    @Environment(\.dismiss) var dismiss
    
    @Binding var topCurrency: Extract4
    @Binding var bottomCurrency: Extract4
    
    var body: some View {
        ZStack{
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(Color.brown.mix(with: .black, by: 0.2))
            VStack{
                 
                Text ("Escolha a moeda para conversão:")
                    .fontWeight(.bold)
                IconGrid(currency: $topCurrency)
                    
                    Text ("Escolha a moeda a ser convertida:")
                    .fontWeight(.bold)
                    .padding(.top)
                IconGrid(currency: $bottomCurrency)
                    
                Button(" OK "){
                    
                dismiss()
                }
                .buttonStyle(PlainButtonStyle())
                .padding()
                .background(.brown.mix(with: .white, by: 0.1))
                .cornerRadius(20)
                .padding()
                .font(.largeTitle)
                }
                .padding()
                .multilineTextAlignment(.center)
                .foregroundStyle(.black)
                
            }
        }
    }


#Preview {
    @Previewable @State var topCurrency: Extract4 = .silverPenny
    @Previewable @State var bottomCurrency: Extract4 = .goldPenny
    
    Extract2(topCurrency: $topCurrency, bottomCurrency: $bottomCurrency)
}
