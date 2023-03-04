//
//  ContentView.swift
//  Quiz
//
//  Created by Julieta White on 2/25/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var score = 0
    
    var body: some View {
        NavigationView{
            VStack(spacing: 20){
                //Color.yellow.opacity(0.3).edgesIgnoreSafeArea(.all)
                Text("QUIZ GAME")
                    .font(.title)
                    .fontWeight(.heavy)
                // Start the game
                NavigationLink(destination: Quiz1()){
                    Text("Play Game")
                        .fontWeight(.heavy)
                        .foregroundColor(.black)
                        .padding()
                        .background(Color(hue: 0.694, saturation: 1.0, brightness: 1.0, opacity: 0.236))
                        .cornerRadius(30)
                }
            
                HStack {
                    // Show score.
                    Text("score: \(self.score) / \(myQuiz1.count)")
                        .onAppear() {
                            self.score = GetScore(quiz: "myQuiz1")
                        }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .ignoresSafeArea(.all)
            .background(Color(hue: 0.089, saturation: 1.0, brightness: 1.0, opacity: 0.129)
                )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
