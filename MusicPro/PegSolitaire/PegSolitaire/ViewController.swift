//
//  ViewController.swift
//  PegSolitaire
//
//  Created by Carlos A Manrique Ucharico on 7/20/20.
//  Copyright © 2020 Carlos A Manrique Ucharico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var gameNum = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func plusGame(_ sender: Any) {
        gameNum = 1
        performSegue(withIdentifier: "number" , sender: self)
    }
    
    @IBAction func rhombusGame(_ sender: Any) {
        gameNum = 2
        performSegue(withIdentifier: "number" , sender: self)
    }
    
    @IBAction func StandardGame(_ sender: Any) {
        gameNum = 3
        performSegue(withIdentifier: "number" , sender: self)
    }
    
    override func prepare( for segue: UIStoryboardSegue, sender: Any?){
        var vc = segue.destination as! SecondViewController
        //vc.finalName = self.nameText
        vc.gameNumber = gameNum
    }
    
}

