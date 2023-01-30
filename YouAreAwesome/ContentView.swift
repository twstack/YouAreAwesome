//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Thomas Stack on 1/22/23.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    
    var body: some View {
        VStack {
            
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
            
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
            
            Button("Show Message") {
                let message1 = "You Are Awesome!"
                let message2 = "You Are Great!"
                messageString = (messageString == message1 ? message2 : message1)
                //imageName = (imageName == "image0" ? "image1" : "image0")
                imageName = "image\(imageNumber)"
                imageNumber += 1
                if imageNumber > 9 {
                    imageNumber = 0
                }
            }
            .buttonStyle(.borderedProminent)
            
        }
        .padding()
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
