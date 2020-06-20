//
//  ViewController.swift
//  Tic-Tac-Toe
//
//  Created by Adithep on 6/18/20.
//  Copyright © 2020 Adithep. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    
    @IBOutlet weak var anotherGameButton: UIButton!
    @IBOutlet weak var logoLabel: UILabel!
    @IBOutlet weak var whoseTurn: UILabel!
    @IBOutlet weak var gameOverLabel: UILabel!
    
    var data = DataModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        whoseTurn.text = "Start with O"
        anotherGameButton.isHidden = true
        data.anotherGameButton = self.anotherGameButton
    }
    
    @IBAction func anotherGameButtonPressed(_ sender: UIButton) {
        
        data.anotherGame()
        newTable()
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        data.gotWinner()
        data.isFull()
        data.whoseTurn = self.whoseTurn
        data.gameOverLabel = self.gameOverLabel
        
        if data.endGame == false {
            if data.boxNumber[sender.tag] != "X" && data.boxNumber[sender.tag] != "O" {
                if sender.tag == 0 {
                    data.logic()
                    data.button1 = self.button1
                    data.button1.setTitle(data.showTurn(data.turn), for: .normal)
                    data.boxNumber[sender.tag] = data.showTurn(data.turn)
                    
                } else if sender.tag == 1 {
                    data.logic()
                    data.button2 = self.button2
                    data.button2.setTitle(data.showTurn(data.turn), for: .normal)
                    data.boxNumber[sender.tag] = data.showTurn(data.turn)
                    
                } else if sender.tag == 2 {
                    data.logic()
                    data.button3 = self.button3
                    data.button3.setTitle(data.showTurn(data.turn), for: .normal)
                    data.boxNumber[sender.tag] = data.showTurn(data.turn)
                    
                } else if sender.tag == 3 {
                    data.logic()
                    data.button4 = self.button4
                    data.button4.setTitle(data.showTurn(data.turn), for: .normal)
                    data.boxNumber[sender.tag] = data.showTurn(data.turn)
                    
                } else if sender.tag == 4 {
                    data.logic()
                    data.button5 = self.button5
                    data.button5.setTitle(data.showTurn(data.turn), for: .normal)
                    data.boxNumber[sender.tag] = data.showTurn(data.turn)
                    
                } else if sender.tag == 5 {
                    data.logic()
                    data.button6 = self.button6
                    data.button6.setTitle(data.showTurn(data.turn), for: .normal)
                    data.boxNumber[sender.tag] = data.showTurn(data.turn)
                    
                } else if sender.tag == 6 {
                    data.logic()
                    data.button7 = self.button7
                    data.button7.setTitle(data.showTurn(data.turn), for: .normal)
                    data.boxNumber[sender.tag] = data.showTurn(data.turn)
                    
                } else if sender.tag == 7 {
                    data.logic()
                    data.button8 = self.button8
                    data.button8.setTitle(data.showTurn(data.turn), for: .normal)
                    data.boxNumber[sender.tag] = data.showTurn(data.turn)
                    
                } else if sender.tag == 8 {
                    data.logic()
                    data.button9 = self.button9
                    data.button9.setTitle(data.showTurn(data.turn), for: .normal)
                    data.boxNumber[sender.tag] = data.showTurn(data.turn)
                    
                } else {
                    print("There is something wrong")
                }
            }
        }
    }
    
    func newTable() {
        button1.setTitle(nil, for: .normal)
        button1.backgroundColor = UIColor(red: 0.95, green: 0.78, blue: 0.14, alpha: 1.00)
        button2.setTitle(nil, for: .normal)
        button2.backgroundColor = UIColor(red: 0.95, green: 0.78, blue: 0.14, alpha: 1.00)
        button3.setTitle(nil, for: .normal)
        button3.backgroundColor = UIColor(red: 0.95, green: 0.78, blue: 0.14, alpha: 1.00)
        button4.setTitle(nil, for: .normal)
        button4.backgroundColor = UIColor(red: 0.95, green: 0.78, blue: 0.14, alpha: 1.00)
        button5.setTitle(nil, for: .normal)
        button5.backgroundColor = UIColor(red: 0.95, green: 0.78, blue: 0.14, alpha: 1.00)
        button6.setTitle(nil, for: .normal)
        button6.backgroundColor = UIColor(red: 0.95, green: 0.78, blue: 0.14, alpha: 1.00)
        button7.setTitle(nil, for: .normal)
        button7.backgroundColor = UIColor(red: 0.95, green: 0.78, blue: 0.14, alpha: 1.00)
        button8.setTitle(nil, for: .normal)
        button8.backgroundColor = UIColor(red: 0.95, green: 0.78, blue: 0.14, alpha: 1.00)
        button9.setTitle(nil, for: .normal)
        button9.backgroundColor = UIColor(red: 0.95, green: 0.78, blue: 0.14, alpha: 1.00)
    }
    
    
}

