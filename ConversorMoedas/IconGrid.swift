//
//  IconGrid.swift
//  ConversorMoedas
//
//  Created by Jonathan Amaral on 12/12/25.
//

import SwiftUI

struct IconGrid: View {
    @Binding var currency: Extract4
    
     var body: some View {
           //     Extract3(extractImage: .goldpenny, extractName: "OURO")
        LazyVGrid(columns: [GridItem(), GridItem(), GridItem()] ) {
            ForEach(Extract4.allCases) { currency in
                if self.currency == currency {Extract3(extractImage: currency.image, extractName: currency.name)
                        .shadow(color: .black, radius: 10)
                        .overlay {
                            RoundedRectangle (cornerRadius: 25)
                                .stroke(lineWidth: 3)
                                .opacity(0.5)
                        }
                } else { Extract3(extractImage: currency.image, extractName: currency.name)
                        .onTapGesture {
                            self.currency = currency
                        }
                    }
                }
            }
        }
    }


#Preview {
    @Previewable @State var currency: Extract4 = .silverPiece
    
    IconGrid(currency: $currency)
}
