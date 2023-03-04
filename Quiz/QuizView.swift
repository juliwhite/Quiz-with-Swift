//
//  QuizView.swift
//  Quiz
//
//  Created by Julieta White on 2/25/23.
//

import SwiftUI

struct Quiz1: View {
    
    // var for number of questions.
    @State var i : Int = 0
    
    // var for score
    @State var score = 0
    
    @State private var showActionSheet = false
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 15) {
            
            // check if n is less than array.
            if(self.i < myQuiz1.count){
                // Display quiz.
                Text(myQuiz1[self.i].text!)
                    .font(.system(size: 25, weight: .medium, design: .rounded))
                
                // answer 0
                Button(action: {
                    self.showActionSheet = true
                    self.buttonAction(i: 0)
                }, label: {
                    ReusableText(text: myQuiz1[self.i].answer[0])
                    
                })
                .actionSheet(isPresented: $showActionSheet){
                    ActionSheet(title: Text("Score"),
                message: Text("Score: \(self.score) / \(myQuiz1.count)"),
                buttons: [.cancel {print(self.showActionSheet)}])
                }
                // answer 1
                Button(action: {
                    self.showActionSheet = true
                    self.buttonAction(i: 1)
                }, label: {
                    ReusableText(text: myQuiz1[self.i].answer[1])
                    
                })
                .actionSheet(isPresented: $showActionSheet){
                    ActionSheet(title: Text("Score"),
                message: Text("Score: \(self.score) / \(myQuiz1.count)"),
                buttons: [.cancel {print(self.showActionSheet)}])
                }
                // answer 2
                Button(action: {
                    self.showActionSheet = true
                    self.buttonAction(i: 2)
                }, label: {
                    ReusableText(text: myQuiz1[self.i].answer[2])
                    
                })
                .actionSheet(isPresented: $showActionSheet){
                    ActionSheet(title: Text("Score"),
                message: Text("Score: \(self.score) / \(myQuiz1.count)"),
                buttons: [.cancel {print(self.showActionSheet)}])
                }
                // answer 3
                Button(action: {
                    self.showActionSheet = true
                    self.buttonAction(i: 3)
                }, label: {
                    ReusableText(text: myQuiz1[self.i].answer[3])
                    
                })
                .actionSheet(isPresented: $showActionSheet){
                    ActionSheet(title: Text("Score"),
                message: Text("Score: \(self.score) / \(myQuiz1.count)"),
                buttons: [.cancel {print(self.showActionSheet)}])
                }
            }
            // Show score.
            else {
                LastView(score: self.score)
            }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea(.all)
        .background(Color(hue: 0.089, saturation: 1.0, brightness: 1.0, opacity: 0.129)
            )
    }
    
    // Options of Buttons
    func buttonAction(i : Int){
        // Increment score for correct answer.
        if(myQuiz1[self.i].correct == i){
            self.score = self.score + 1
        }
        // Next Question
        self.i = self.i + 1
    }
}

struct Quiz1_Previews: PreviewProvider {
    static var previews: some View {
        Quiz1()
    }
}
