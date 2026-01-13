//
//  ContentView.swift
//  ConversorMoedas
//
//  Created by Jonathan Amaral on 01/12/25.
//

import SwiftUI
import TipKit

struct ContentView: View {
    
    @State var cambioInfo = false
    @State var showSelectCurrency = false
    
    @State var leftValor = ""
    @State var rightValor = ""
    
    @FocusState var leftTyping
    @FocusState var rightTyping
    
    //duas maneiras de escrever o codigo a baixo
    @State var leftCurrency = Extract4.silverPiece
    @State var rightCurrency: Extract4 = .goldPiece
    
    var currencyTip = CurrencyTyp()
    
    var body: some View {
        //ZStack HStack VStack = camadas de imagem
        ZStack{
            //imagem de fundo
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            VStack{
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                Text("Conversão de Moeda")
                    .font(Font.largeTitle)
                    .foregroundStyle(.white)
                HStack{
                    VStack{
                        HStack{ Image(leftCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 50)
                            Text(leftCurrency.name)
                                .font(Font.headline)
                                .foregroundStyle(.white)
                        }
                        .padding(.bottom, -5)
                        .onTapGesture {
                            showSelectCurrency.toggle()
                            currencyTip.invalidate(reason: .actionPerformed)
                        }
                        .popoverTip(currencyTip, arrowEdge: .bottom)
                        
                        TextField("Valor", text: $leftValor)
                            .textFieldStyle(.roundedBorder)
                            .focused($leftTyping)
                            .onChange(of: leftValor) {if leftTyping {rightValor = leftCurrency .convert(leftValor, to: rightCurrency)
                            }
                    }
                }
                    
                    Image(systemName: "equal")
                        .font(Font.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    VStack{
                        HStack{
                            Text(rightCurrency.name)
                                .font(Font.headline)
                                .foregroundStyle(.white)
                            Image(rightCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 50)
                        }
                        .padding(.bottom, -5)
                        .onTapGesture {
                            showSelectCurrency.toggle()
                        }
                        
                        TextField("Valor", text: $rightValor)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                            .focused($rightTyping)
                            .onChange(of: rightValor) { if rightTyping {leftValor = leftCurrency .convert(leftValor, to: rightCurrency)
                            }
                        }
                    }
                    
                }.padding()
                    .background(.black.opacity(0.5))
                    .clipShape(.capsule)
                    .keyboardType(.decimalPad)
                Spacer()
                
                HStack{
                    Spacer()
                    Button {
                        cambioInfo.toggle()
                    }  label: { Image(systemName: "info.circle.fill")
                            .font(Font.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                    .sheet(isPresented: $cambioInfo) {InfoCambio()}
                }
                .sheet(isPresented: $showSelectCurrency) { Extract2(topCurrency: $leftCurrency, bottomCurrency: $rightCurrency) }
            }
            .task {
                try? Tips.configure()
            }
            
            .onChange(of: leftCurrency){rightValor = leftCurrency .convert(leftValor, to: rightCurrency)}
            
            .onChange(of: rightCurrency){rightValor = leftCurrency .convert(leftValor, to: rightCurrency)}
        }
    }
}
    #Preview {
        ContentView()
    }
