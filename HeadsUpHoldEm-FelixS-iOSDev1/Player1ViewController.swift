//
//  Player1ViewController.swift
//  HeadsUpHoldEm-FelixS-iOSDev1
//
//  Created by Nestor Sotres on 2/28/16.
//  Copyright © 2016 Nestor Sotres. All rights reserved.
//

import UIKit

class Player1ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var randomDisplayLabel: UILabel!
    
    //Class variables
    var house = ViewController()
    let Suit1Component = 0
    let Card1ValueComponent = 1
    let Suit2Component = 2
    let Card2ValueComponent = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func dealRandomNumber(sender: AnyObject) {
        
        house.generateRandomNumber()
        randomDisplayLabel.text = String(house.randomNumberFromTabbedController)
    }
    
    // MARK:-
    // MARK: Picker Data Source Methods
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 4
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == Suit1Component || component == Suit2Component{
            return 4    //number of suits
        } else {
            return 12   //total number of cards
        }
    }
    
    // MARK:-
    // MARK: Picker Delegate Methods
    
    
    
    
    
    
    
    
    

}
