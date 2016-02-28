//
//  HouseDealerViewController.swift
//  HeadsUpHoldEm-FelixS-iOSDev1
//
//  Created by Nestor Sotres on 2/28/16.
//  Copyright © 2016 Nestor Sotres. All rights reserved.
//

import UIKit

class HouseDealerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet weak var flopPicker: UIPickerView!        //picker holding the first cards drawn by house
    
    
    //Class variables
    var house3 = ViewController()
    var deck3 = [Card]()                        // holds deck of cards
    //picker tags
    let flop = 0
    let turn = 1
    let river = 2
    //component identifiers
    let Suit1Component = 0
    let Card1ValueComponent = 1
    let Suit2Component = 2
    let Card2ValueComponent = 3
    let Suit3Component = 4
    let Card3ValueComponent = 5
    private var suitImagesArray : [UIImage]!    // images for suits of cards
    private var valueImagesArray: [UIImage]!    // images for value of cards
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //set the tab bar view controller to recognize the custom one made
        house3 = self.tabBarController as! ViewController
        //get the deck of cards
        deck3 = house3.getDeck()
        //build images
        suitImagesArray = [UIImage(named: "Back")!, UIImage(named: "Club")!, UIImage(named: "Diamond")!, UIImage(named: "Heart")!, UIImage(named: "Spade")! ]
        valueImagesArray = [UIImage(named: "Back")!, UIImage(named: "Ace")!, UIImage(named: "Two")!, UIImage(named: "Three")!, UIImage(named: "Four")!, UIImage(named: "Five")!, UIImage(named: "Six")!, UIImage(named: "Seven")!, UIImage(named: "Eight")!, UIImage(named: "Nine")!, UIImage(named: "Ten")!, UIImage(named: "Jack")!, UIImage(named: "Queen")!, UIImage(named: "King")!]
        
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

    // MARK: -
    // MARK: Picker Data Source Methods
    
    //Depending on which picker view is asking, set up appropriate number of components
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        if pickerView.tag == flop {
          return 6  //Flop draws 3 cards so 6 segments needed (1 for each suit, 1 for each value)
        } else {
            return 1
        }
        
    }
    
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if component == Suit1Component {
            //first card's suit
            return 4
        } else if component == Card1ValueComponent {
            //first card's value
            return 14
        } else if component == Suit2Component {
            //second card's suit
            return 4
        } else if component == Card2ValueComponent {
            //second card's value
            return 14
        } else if component == Suit3Component {
            //third card's suit
            return 4
        } else if component == Card3ValueComponent {
            //third card's value
            return 14
        } else {
            return 1    //default
        }
    }
    
    // MARK:-
    // MARK: Picker Delegate Methods
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        
        if component == Suit1Component {
            let imageS1 = suitImagesArray[row]
            let imageViewS1 = UIImageView(image: imageS1)
            return imageViewS1
        } else if component == Card1ValueComponent {
            let imageV1 = valueImagesArray[row]
            let imageViewV1 = UIImageView(image: imageV1)
            return imageViewV1
        } else if component == Suit2Component {
            let imageS2 = suitImagesArray[row]
            let imageViewS2 = UIImageView(image: imageS2)
            return imageViewS2
        } else if component == Card2ValueComponent {
            let imageV2 = valueImagesArray[row]
            let imageViewV2 = UIImageView(image: imageV2)
            return imageViewV2
        } else if component ==  Suit3Component {
            let imageS3 = suitImagesArray[row]
            let imageViewS3 = UIImageView(image: imageS3)
            return imageViewS3
        } else if component == Card3ValueComponent {
            let imageV3 = valueImagesArray[row]
            let imageViewV3 = UIImageView(image: imageV3)
            return imageViewV3
        } else{
            let imageD = valueImagesArray[row]
            let imageViewD = UIImageView(image: imageD)
            return imageViewD
        }
    }
    
    func pickerView(pickerView: UIPickerView, rowHeightForComponent component: Int) -> CGFloat {
        return 64
    }
    
    
    
    
    
    
    
    
    
    
    
}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    












