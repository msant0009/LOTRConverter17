//
//  ContentView.swift
//  LOTRConverter17
//
//  Created by Mark Santoro on 9/17/24.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    @State var showselectCurrency = false
    @State var leftAmount = ""
    @State var rightAmount = ""
    
    @State var leftCurrency: Currency = .silverPiece
    @State var rightCurrency: Currency = .goldPiece
    
    var body: some View {
        ZStack{
            //Background image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                //Prancing pony image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                //currency xchnge text
                Text("Currency Exchange")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
                
                //currency conversion
                
                
                
                HStack{
                    // left conversion section
                    VStack{
                        //currency
                        HStack{
                            //currency image
                            Image(leftCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            //currency text
                            Text(leftCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                        }
                        .padding(.bottom, -5)
                        .onTapGesture {
                            showselectCurrency.toggle()
                        }
                        
                        //text field
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
                    
                    }
                    
                    //equal sign
                    Image(systemName: "equal")// from SF symbols library
                        .font(.largeTitle)//SF symbols can be treated as text or as an image
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
 
                    //right conversion section
                    VStack{
                        //currency
                        HStack{
                            //currency text
                            Text(rightCurrency.name)
                                .font(.headline)
                                .foregroundStyle(.white)
                            //currency image
                            Image(rightCurrency.image)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                        }
                        .padding(.bottom, -5)
                        .onTapGesture {
                            showselectCurrency.toggle()
                        }
                        
                        //text field
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                        
                    }
                }
                .padding()
                .background(.black.opacity(0.5))
                .clipShape(.capsule)
                
                Spacer()
                
                //info button

                HStack {
                    Spacer()
                    
                    Button {
                        showExchangeInfo.toggle()
                        
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                    // .sheet can be placed anywhere in the contentView
                    .sheet(isPresented: $showExchangeInfo) {
                        ExchangeInfo()
                    }
                    .sheet(isPresented: $showselectCurrency) {
                        SelectCurrency(topCurrency: leftCurrency,bottomCurrency: rightCurrency)
                    }
                }
                
            
            }
    //        .border(.blue)// for debug to see outline of VStack in live mode
            
            
        }
    }
}

#Preview {
    ContentView()
}
