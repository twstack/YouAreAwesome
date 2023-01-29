//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Thomas Stack on 1/22/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "When the Genius Bar needs help, they call you!"
    
    var body: some View {
            VStack {
                    
                    Spacer()
                    
                    Text(messageString)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.red)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                        .frame(height: 150)
                        .frame(maxWidth: .infinity)
                        .padding()
                    
                    Spacer()
                    
                    HStack {
                        Button("Awesome") {
                            messageString = "You Are Awesome!"
                        }
                        .buttonStyle(.borderedProminent)
                        
                        Spacer()
                    
                        
                        Button("Great") {
                            messageString = "You Are Great!"
                        }
                        .buttonStyle(.borderedProminent)
                    }
                    .padding()
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
