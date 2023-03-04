//
//  LastView.swift
//  Quiz
//
//  Created by Julieta White on 2/27/23.
//

import SwiftUI

struct LastView: View {
    var score : Int
    var body: some View {
        VStack{
            Text("Your score:  \(score)")
                .font(.title)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .ignoresSafeArea(.all)
                .background(Color(hue: 0.089, saturation: 1.0, brightness: 1.0, opacity: 0.129)
                    )
                .onAppear(){
                    Score(quiz: "Quiz", score: self.score)
                }
        }
    }
}

struct LastView_Previews: PreviewProvider {
    static var previews: some View {
        LastView(score: 0)
    }
}
