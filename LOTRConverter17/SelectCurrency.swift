//
//  SelectCurrency.swift
//  LOTRConverter17
//
//  Created by Mark Santoro on 9/19/24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @State var currency: Currency // selected currency
    
    var body: some View {
        ZStack{
            //Parchment backgnd
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            
            VStack{
                // text
                Text("Select the currency you are starting with: \(Currency.silverPenny.rawValue)")
                    .fontWeight(.bold)
                    
                
                //currency icons
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(Currency.allCases) { currency in
                        if self.currency == currency {// or wecould have used a different name for selected currency, then self. not needed
                            
                            CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                                .shadow(color: .black, radius: 10)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 25)
                                        .stroke(lineWidth: 3)
                                        .opacity(0.5)
                                }
                            
                        } else {
                            CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                                .onTapGesture {
                                    self.currency = currency
                                }
                            
                            
                        }
                    }
                }

                
                //text
                Text("Select the currency you would like to convert to")
                    .fontWeight(.bold)
                    
                
                
                //currency icons

                
                //done button
                Button("Done"){
                    dismiss()
                
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
                
           
                
            }
            .padding()
            .multilineTextAlignment(.center)
            
            
            
            
            
        }
    }
}

#Preview {
    SelectCurrency(currency: .silverPiece)
}
