//
//  main.swift
//  iMultiply
//
//  Created by Ashutosh Dave on 11/04/20.
//  Copyright © 2020 Ashutosh Dave. All rights reserved.
//

import Foundation

enum QuestionType: CaseIterable {
	case add
	case subtract
	case multiply
}

class iMultiply {
	var questionNumber = 1
	var score = 0
	
	func start() {
		print("Welcome to iMultiply!")
		
		repeat {
			let left = Int.random(in: 1...12)
			let right = Int.random(in: 1...12)
			let operation = QuestionType.allCases.randomElement()!
			
			let question: String
			
			switch operation {
			case .add:
				question = "What is \(left) plus \(right)?"
			case .subtract:
				question = "What is \(left) minus \(right)?"
			case .multiply:
				question = "What is \(left) multiply \(right)?"
			}
			
			let correctAnswer: Int
			
			switch operation {
			case .add:
				correctAnswer = left + right
			case .subtract:
				correctAnswer = left - right
			case .multiply:
				correctAnswer = left * right
			}
			
			print("\n\(questionNumber). \(question)")
			print("Your answer: ", terminator: "")
			
			if let answer = readLine() {
				guard let answerInt = Int(answer) else {
					print("Error")
					continue
				}
				
				questionNumber += 1
				
				if answerInt == correctAnswer {
					score += 1
					print("Correct")
				} else {
					print("Wrong")
				}
			}
		} while questionNumber < 10
		
		print("\nYou scored \(score).")
	}
}

let game = iMultiply()
game.start()
