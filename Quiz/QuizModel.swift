//
//  QuizModel.swift
//  Quiz
//
//  Created by Julieta White on 2/25/23.
//

import Foundation

struct QuizModel{
    //var imag: String?
    var text: String?
    var answer: [String]
    var correct: Int?
}

var myQuiz1 : [QuizModel] = [
    QuizModel(text: "And, if you keep my commandments and ____ you shall have eternal life, which gift is the greatest of all the gifts. What phrase completes this scripture?",
              answer: ["believe in Christ", "give praise unto the Lord", "pray always", "endure to the end"],
              correct: 3),
    QuizModel(text: "What is not the first four principles and ordinances of the gospel as listed in the fourth Article of Faith",
              answer: ["faith", "repentance", "baptism", "mision"],
              correct: 3),
    QuizModel(text: "Which of the following languages was the first laguage to surpass English aws the most widely native language among the LDS church members: ",
              answer: ["Portuguese", "Chinese", "Spanish", "German"],
              correct: 2),
    QuizModel(text: "Which of the following is one of the spiritual gifts listed in Article of Faith number Seven?",
              answer: ["crying", "stealing", "healing", "killing"],
              correct: 2),
    QuizModel(text: "Which very famous character from the Bible makes an important appearenace in the Book of Mormon?",
              answer: ["Moses", "Job", "Noah", "Jesus Christ"],
              correct: 3),
    QuizModel(text: "Which Book of Mormon prophet and warrior is found standing atop LDS temples throughout the world:",
              answer: ["Mormon", "Helaman", "Nephi", "Moroni"],
              correct: 3),
    QuizModel(text: "Which Doctrine and Covenants Scriptures Mastery refers to \"the song of the heart\"",       answer: ["DC 130:20-21", "DC 82:10", "DC 58:42-43", "DC 25:12"],
              correct: 3),
    QuizModel(text: "Which of these was written by the first Latter-Day prophet?",
              answer: ["The Ten Commandments", "Article of Faith", "The Official Guide to Mormoms", "The Book of Revelation"],
              correct: 1),
    QuizModel(text: "Which of the following is NOT part of the LDS Church organization, as found in Article of Faith number six?",
              answer: ["no tea, coffee, or meat", "no tea, coffee, or alcohol", "no meat, coffee, or green vegetable", "no hot drinks, alcohol, or soda"],
              correct: 1),
    QuizModel(text: "Which of the following in NOT part of the LDS Church organization, as found in Article of Faith number siz:",
              answer: ["apostles", "prophets", "cardinals", "evangelists"],
              correct: 2),
]

func Score(quiz : String, score : Int){
    UserDefaults.standard.set(score, forKey: quiz)
}

func GetScore (quiz : String) -> Int {
    return UserDefaults.standard.integer(forKey: quiz)
}
