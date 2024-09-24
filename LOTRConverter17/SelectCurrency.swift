//
//  SelectCurrency.swift
//  LOTRConverter17
//
//  Created by Mark Santoro on 9/19/24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @Binding var topCurrency : Currency
    @Binding var bottomCurrency : Currency

    
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
                IconGrid(currency: $topCurrency)

                
                //text
                Text("Select the currency you would like to convert to")
                    .fontWeight(.bold)
                    
                
                
                //currency icons
                IconGrid(currency: $bottomCurrency)

                
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
    SelectCurrency(topCurrency: .constant(.copperPenny), bottomCurrency: .constant(.silverPiece))
}
