//
//  ViewController.swift
//  segueTEST
//
//  Created by Carlos A Manrique Ucharico on 6/14/20.
//  Copyright © 2020 Carlos A Manrique Ucharico. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let button_11 = UIButton(frame: CGRect(x:100, y:100, width: 100, height:50))
        button_11.frame =  CGRect(x:195 , y:590 , width: 55 , height : 55)
        button_11.layer.cornerRadius = 27.5
        
        button_11.setTitle( "P8", for: .normal)
        button_11.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
        button_11.backgroundColor = UIColor.gray
        button_11.setTitleColor(.blue, for: .normal)
        self.view.addSubview( button_11 )

    }

    @objc func buttonClicked(_ sender: UIButton){
      
            
            self.performSegue(withIdentifier: "OneSegue", sender: self)
            
      
        
        //let buttonTitle = _.title
        /*
         if ( CORRECT){
         CORRECT popup + next excersice
         }else{
         WRONG popup + repeat excercise
         }
         */
        
    }
    
    func buttonsCode(){
        //  number of buttons , X , Y , WIDTH , HEIGHT ,
    }
    
}

