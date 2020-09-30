//
//  ViewController.swift
//  MusicProject
//
//  Created by Carlos A Manrique Ucharico on 10/6/19.
//

import UIKit



class ViewController: UIViewController {
    var counter = 0;
    
    //var mainArray = [Bool](repeating:false,count:4)
    var arrayNumbers = [0,0,0,0,0,0,0,0,0,0,0,0]
    
    //  I was thinking of shortening the array above so I do not use space in memory but...  what if somebody goes back? would it reset ?, I have to test that,  I will do it when I figure about the "back" button
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    
    @IBAction func m2(_ sender: Any) {
        //    the isOn was there only to tryout if it switches, now I have to use the array instead
        
        if arrayNumbers[0] == 0{ arrayNumbers[0] = 1
        }else{ arrayNumbers[0] = 0 }
        
        //isOn = false ? isOn = true : isOn =  false
        //print(isOn)
        
    }

    @IBAction func three_m(_ sender: Any) {
        //   it had to be m3, did not change the name but it is still good
        if arrayNumbers[1] == 0{
            //mainArray[1] = true
            arrayNumbers[1] = 2
        }else{
            //mainArray[1] = false
            arrayNumbers[1] = 0
        }
    }
    
    @IBAction func m6(_ sender: Any) {
        if arrayNumbers[2] == 0{
            //mainArray[2] = true
            arrayNumbers[2] = 3
        }else{
            //mainArray[2] = false
            arrayNumbers[2] = 0
        }
    }
    
    @IBAction func m7(_ sender: Any) {
        if arrayNumbers[3] == 0{
            //mainArray[3] = true
            arrayNumbers[3] = 4
        }else{
            //mainArray[3] = false
            arrayNumbers[3] = 0
        }
    }
    
    @IBAction func M2(_ sender: Any) {
        if arrayNumbers[4] == 0{
            //mainArray[4] = true
            arrayNumbers[4] = 5
        }else{
            //mainArray[4] = false
            arrayNumbers[4] = 0
        }
    }
    
    @IBAction func three_M(_ sender: Any) {
        if arrayNumbers[5] == 0{
            //mainArray[5] = true
            arrayNumbers[5] = 6
        }else{
            //mainArray[5] = false
            arrayNumbers[5] = 0
        }
    }
    
    @IBAction func M6(_ sender: Any) {
        if arrayNumbers[6] == 0{
           // mainArray[6] = true
            arrayNumbers[6] = 7
        }else{
            //mainArray[6] = false
            arrayNumbers[6] = 0
        }
    }
    
    @IBAction func M7(_ sender: Any) {
        if arrayNumbers[7] == 0{
            //mainArray[7] = true
            arrayNumbers[7] = 8
        }else{
            //mainArray[7] = false
            arrayNumbers[7] = 0
        }
    }
    
    @IBAction func P4(_ sender: Any) {
        if arrayNumbers[8] == 0{
            //mainArray[8] = true
            arrayNumbers[8] = 9
        }else{
            //mainArray[8] = false
            arrayNumbers[8] = 0
        }
    }
    
    @IBAction func P5(_ sender: Any) {
        if arrayNumbers[9] == 0{
            //mainArray[9] = true
            arrayNumbers[9] = 10
        }else{
            //mainArray[9] = false
            arrayNumbers[9] = 0
        }
    }
    
    @IBAction func P8(_ sender: Any) {
        if arrayNumbers[10] == 0{
            //mainArray[10] = true
            arrayNumbers[10] = 11
        }else{
            //mainArray[10] = false
            arrayNumbers[10] = 0
        }
    }
    
    @IBAction func tritone(_ sender: Any) {
        if arrayNumbers[11] == 0{
            //mainArray[11] = true
            arrayNumbers[11] = 12
        }else{
            //mainArray[11] = false
            arrayNumbers[11] = 0
        }
    }
    
    
    //  need to find out which ones are true and how many
    @IBAction func startButton(_ sender: Any) {
        // I gotta send the array from here
        //  maybe not
        
        //how many?
        //var value = Bool();
    }
    
    // Which ones?
    
    override func prepare( for segue: UIStoryboardSegue, sender: Any?){
        
        //How many?
        // if the value is different than zero
        for value in arrayNumbers{
            if value != 0 { counter = counter+1 }
        }
        
        
        
        
        
        if segue.identifier == "segue"{
            let destinationController = segue.destination as! SecondViewController
            
            destinationController.numberOfButtons = counter
            destinationController.optionsArray = arrayNumbers
            
        }
        
        print(arrayNumbers[0],arrayNumbers[1],arrayNumbers[2],arrayNumbers[3],arrayNumbers[4],arrayNumbers[5],arrayNumbers[6],arrayNumbers[7],arrayNumbers[8],arrayNumbers[9],arrayNumbers[10],arrayNumbers[11],separator: " , ")
        
        
        
        print("counter: \(counter)")
    }
    
}

