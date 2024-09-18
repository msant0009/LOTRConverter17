//
//  ContentView.swift
//  LOTRConverter17
//
//  Created by Mark Santoro on 9/17/24.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    @State var leftAmount = ""
    @State var rightAmount = ""
    
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
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                            //currency text
                            Text("Silver Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            
                        }
                        .padding(.bottom, -5)
                        
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
                            Text("Gold Piece")
                                .font(.headline)
                                .foregroundStyle(.white)
                            //currency image
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            
                        }
                        .padding(.bottom, -5)
                        
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
                }
                
            
            }
    //        .border(.blue)// for debug to see outline of VStack in live mode
            
            
        }
    }
}

#Preview {
    ContentView()
}
