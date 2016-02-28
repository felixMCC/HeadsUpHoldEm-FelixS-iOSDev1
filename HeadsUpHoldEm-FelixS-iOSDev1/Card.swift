//
//  Card.swift
//  HeadsUpHoldEm-FelixS-iOSDev1
//
//  Created by Nestor Sotres on 2/28/16.
//  Copyright © 2016 Nestor Sotres. All rights reserved.
//

import Foundation

//Base class for creating a card to be held in the deck
class Card {
    
    //Class properties
    private let suit : String               //Club, Diamond, Heart, Spade
    private let value : String              //Card Value ex: K, Q, J, A, 2-9
    private let image : String              //name of image used
    //let nameValue : String = ""     //name
    
    init(){
        suit = ""
        value = ""
        image = ""
    }
    
    init(suit cSuit : String, value cValue : String, imageName cImage : String){
        suit = cSuit
        value = cValue
        image = cImage
    }
    
    
    // MARK:-
    // MARK: Getters and Setters
    
    func getSuit()-> String {
        return suit
    }
    
    func getValue()-> String{
        return value
    }
    
    func getImageName()-> String{
        return image
    }
    
}