//
//  ViewController.swift
//  HeadsUpHoldEm-FelixS-iOSDev1
//
//  Created by Nestor Sotres on 2/28/16.
//  Copyright © 2016 Nestor Sotres. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {
    
    var randomNumberFromTabbedController = 0
    var deck = [Card]()                                     //holds deck of cards
    var suitNameArray = ["Club", "Diamond", "Heart", "Spade"]        //suits for cards & name of image

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        generateDeck()  //create deck holding all playing cards
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func generateRandomNumber()-> Int{
        
        let random = Int(arc4random_uniform(9)) + 1     //generate a random number from 1 - 9
        randomNumberFromTabbedController = random
        return random
    }
    
    // MARK:-
    // MARK: Getter and Setter Functions
    
    func getDeck()-> [Card] {
        return deck
    }

    //Generate the deck of cards
    func generateDeck()->Void {
        //generate 4 suits of cards (2-9)
        for var suitCnt = 0; suitCnt < 4; suitCnt++ {
            
            //create face cards for current suit
            var newFaceCard = Card(suit: suitNameArray[suitCnt], value: "A", imageName: suitNameArray[suitCnt])
            deck.append(newFaceCard)    //add new face card to deck
            newFaceCard = Card(suit: suitNameArray[suitCnt], value: "K", imageName: suitNameArray[suitCnt])
            deck.append(newFaceCard)    //add new face card to deck
            newFaceCard = Card(suit: suitNameArray[suitCnt], value: "Q", imageName: suitNameArray[suitCnt])
            deck.append(newFaceCard)    //add new face card to deck
            newFaceCard = Card(suit: suitNameArray[suitCnt], value: "J", imageName: suitNameArray[suitCnt])
            deck.append(newFaceCard)    //add new face card to deck
            
            //generate values (2-9) for current suite
            for var valueCnt = 2; valueCnt < 10; valueCnt++ {
                let newCard = Card(suit: suitNameArray[suitCnt], value: String(valueCnt), imageName: suitNameArray[suitCnt])
                deck.append(newCard)    //add new card to deck
            }
        }
    }

}

