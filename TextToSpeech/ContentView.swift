//
//  ContentView.swift
//  TextToSpeech
//
//  Created by Shah Md Imran Hossain on 22/7/23.
//

import AVFoundation
import SwiftUI

struct ContentView: View {
    @State private var givenText = ""
    @State private var synthesizer = AVSpeechSynthesizer()
    
    var body: some View {
        VStack {
            TextField("Text", text: $givenText)
                .padding()
            
            Button("Speak") {
                let utterance = AVSpeechUtterance(string: givenText)
                utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
                utterance.rate = 0.4
                
                synthesizer.speak(utterance)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
