//
//  DataModel.swift
//  Tic-Tac-Toe
//
//  Created by Adithep on 6/18/20.
//  Copyright © 2020 Adithep. All rights reserved.
//

import Foundation
import UIKit

struct DataModel {
    
    var button1: UIButton!
    var button2: UIButton!
    var button3: UIButton!
    var button4: UIButton!
    var button5: UIButton!
    var button6: UIButton!
    var button7: UIButton!
    var button8: UIButton!
    var button9: UIButton!
    
    var anotherGameButton: UIButton!
    
    var whoseTurn: UILabel?
    var gameOverLabel: UILabel?

    
    var numberTurn = 0
    var boxNumber = ["0","1","2","3","4","5","6","7","8"]
    var turn = true
    var endGame = false
    var winner = false
    
    mutating func logic() {
        whoseTurn?.text = "\(showTurn(turn))'s turn"
        turn = !turn
        numberTurn += 1
    }
    
    mutating func isFull() {
        if numberTurn == 9 {
            if winner == false {
                endGame = true
                gameOverLabel?.text = "Game Over"
                whoseTurn?.text = "Draw"
                anotherGameButton.isHidden = false
            }
        }
    }
    
    mutating func theWinner() {
        endGame = true
        whoseTurn?.text = "\(showTurn(turn)) won"
        gameOverLabel?.text = "Game Over"
        anotherGameButton?.isHidden = false
        winner = true
        anotherGameButton.isHidden = false
    }
    
    mutating func anotherGame() {
        numberTurn = 0
        boxNumber = ["0","1","2","3","4","5","6","7","8"]
        turn = true
        endGame = false
        winner = false
        anotherGameButton.isHidden = true
        whoseTurn?.text = "Start with O"
        gameOverLabel?.text = " "
    }
    
    func showTurn(_ turn: Bool) -> String {
        if turn {
            return "X"
        } else {
            return "O"
        }
    }
    
    
    func bg(_ background: UIButton) {
        background.backgroundColor = UIColor(red: 0.06, green: 0.22, blue: 0.36, alpha: 1.00)
    }
    
    mutating func gotWinner() {
        if boxNumber[0] == boxNumber[1] && boxNumber[1] == boxNumber[2] {
            theWinner()
            bg(button1)
            bg(button2)
            bg(button3)
        } else if boxNumber[3] == boxNumber[4] && boxNumber[4] == boxNumber[5] {
            theWinner()
            bg(button4)
            bg(button5)
            bg(button6)
        } else if boxNumber[6] == boxNumber[7] && boxNumber[7] == boxNumber[8] {
            theWinner()
            bg(button7)
            bg(button8)
            bg(button9)
        } else if boxNumber[0] == boxNumber[3] && boxNumber[3] == boxNumber[6] {
            theWinner()
            bg(button1)
            bg(button4)
            bg(button7)
        } else if boxNumber[1] == boxNumber[4] && boxNumber[4] == boxNumber[7] {
            theWinner()
            bg(button2)
            bg(button5)
            bg(button8)
        } else if boxNumber[2] == boxNumber[5] && boxNumber[5] == boxNumber[8] {
            theWinner()
            bg(button3)
            bg(button6)
            bg(button9)
        } else if boxNumber[0] == boxNumber[4] && boxNumber[4] == boxNumber[8] {
            theWinner()
            bg(button1)
            bg(button5)
            bg(button9)
        } else if boxNumber[2] == boxNumber[4] && boxNumber[4] == boxNumber[6] {
            theWinner()
            bg(button3)
            bg(button5)
            bg(button7)
        }
    }
}
