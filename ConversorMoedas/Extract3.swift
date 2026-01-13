//
//  Extract3.swift
//  ConversorMoedas
//
//  Created by Jonathan Amaral on 12/12/25.
//

import SwiftUI

struct Extract3: View {
    let extractImage: ImageResource
    let extractName: String
    
    var body: some View {
        
                ZStack(alignment: .bottom){
                    Image(extractImage)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    
                    Text(extractName)
                        .padding(3)
                        .font(.caption)
                        .frame(maxWidth: .infinity)
                        .background(.brown.opacity(0.75))
                    
                }   .padding(3)
                    .frame(width: 100, height: 100)
                    .background(.brown)
                    .clipShape(.rect(cornerRadius: 20))
                
                
            }
    }


#Preview {
    Extract3(extractImage: .goldpenny, extractName: "Ouro")
}
