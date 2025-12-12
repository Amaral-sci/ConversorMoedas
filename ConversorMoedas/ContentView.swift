//
//  ContentView.swift
//  ConversorMoedas
//
//  Created by Jonathan Amaral on 01/12/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var cambioInfo = false
    @State var leftValor = ""
    @State var rightValor = ""
    
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
                        HStack{ Image(.silverpenny)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 50)
                            Text(" Silver ")
                                .font(Font.headline)
                                .foregroundStyle(.white)
                        }
                        .padding(.bottom, -5)
                        TextField("Valor", text: $leftValor)
                            .textFieldStyle(.roundedBorder)
                    }
                    
                    Image(systemName: "equal")
                        .font(Font.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    VStack{
                        HStack{
                            Text(" Gold ")
                                .font(Font.headline)
                                .foregroundStyle(.white)
                            Image(.goldpenny)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 50)
                        }
                        .padding(.bottom, -5)
                        TextField("Valor", text: $rightValor)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                    
                }.padding()
                    .background(.black.opacity(0.5))
                    .clipShape(.capsule)
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
                }
            }
        }
    }
}
    #Preview {
        ContentView()
    }
