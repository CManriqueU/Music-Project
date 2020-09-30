//
//  SecondViewController.swift
//  PegSolitaire
//
//  Created by Carlos A Manrique Ucharico on 7/20/20.
//  Copyright © 2020 Carlos A Manrique Ucharico. All rights reserved.
//

import Foundation
import UIKit

class SecondViewController : UIViewController{
    
    var gameNumber = 0
    override func viewDidLoad() {
        
        //let board: Matrix = [[true,true],[false,false],[true,true]]
        
        //var m1 = Matrix.init( rows: 3, columns: 4, Data, 4)
        
        var board = [[Bool]]()
        
        /*
        board = [ [ false, false, false, false, false, false, false ],
                  [ false, false, false, true , false, false, false ],
                  [ false, false, false, true , false, false, false ],
                  [ false, true , true , true , true , true , false ],
                  [ false, false, false, true , false, false, false ],
                  [ false, false, false, true , false, false, false ],
                  [ false, false, false, false, false, false, false ] ];
        
        */
        
        //board[0][0] = false
        
        
        //var board = Array( repeating: Array(repeating: true, count: <#T##Int#>), count: <#T##Int#>)
        
        
        switch gameNumber{
            case 1:
                // I could create a function so I do not get confused, should I not?
                
                // look at how to create a draggable view
                
                
                
                break;
            case 2:
                break;
            case 3:
                break;
            default: break
        }
        
    }
    
}
