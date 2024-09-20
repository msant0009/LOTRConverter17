//
//  SelectCurrency.swift
//  LOTRConverter17
//
//  Created by Mark Santoro on 9/19/24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    
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
                        CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                        
                    }
                }
                .padding()
                
                //text
                Text("Select the currency you would like to convert to")
                    .fontWeight(.bold)
                    
                
                
                //currency icons
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem()]) {
                    ForEach(Currency.allCases) { currency in
                        CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                        
                    }
                }
                
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
    SelectCurrency()
}
