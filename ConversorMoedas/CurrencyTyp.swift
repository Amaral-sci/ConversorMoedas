//
//  CurrencyTyp.swift
//  ConversorMoedas
//
//  Created by Jonathan Amaral on 12/01/26.
//

import TipKit

struct CurrencyTyp: Tip {
    var title = Text (" Mudar moeda")
    
    var message: Text? = Text("Escolha a moeda que deseja converter.")
    
    var image: Image? = Image(systemName: "arrow.2.circlepath.circle")
    
}
