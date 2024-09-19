//
//  CurrencyIcon.swift
//  LOTRConverter17
//
//  Created by Mark Santoro on 9/19/24.
//

import SwiftUI

struct CurrencyIcon: View {
    let currencyImage: ImageResource
    let currencyName: String
    
    
    var body: some View {
        ZStack(alignment: .bottom) {
            // currency image
            Image(currencyImage)
                .resizable()
                .scaledToFit()
       
            //currency name
            Text(currencyName)
            //order of modifiers matters!
                .padding(3)
                .font(.caption)
                .frame(maxWidth: .infinity)
                .background(.brown.opacity(0.75))
            
        }
        .padding(3)
        .frame(width: 100,height: 100)
        .background(.brown)
        .clipShape(.rect(cornerRadius: 25))
    }
}

#Preview {
    CurrencyIcon(currencyImage: .goldpenny, currencyName: "Gold Penny")
}
