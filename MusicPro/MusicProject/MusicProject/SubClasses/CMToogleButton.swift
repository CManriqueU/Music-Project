//
//  CMToogleButton.swift
//  MusicProject
//
//  Created by Carlos A Manrique Ucharico on 4/9/20.
//

import UIKit

class CMToogleButton: UIButton {
    
    
    var isOn:Bool = false;
    
    override init( frame: CGRect ){
        super.init(frame:frame)
        initButton();
    }
    
    required init?( coder aDecoder: NSCoder ){
        super.init(coder: aDecoder)
        initButton();
    }           
    
    func initButton(){
        layer.borderWidth = 2.0
        //layer.borderColor =
        //layer.cornerRadius = frame.size.height/2
        layer.cornerRadius = frame.size.width/2
        //setTitleColor()
        
        addTarget(self, action: #selector(CMToogleButton.buttonPressed), for: .touchUpInside)
        
    }
    
    @objc func buttonPressed(){
        activateButton( bool: !isOn )
    }
    
    
               //   variable:type
    func activateButton(bool: Bool){
        isOn = bool;
        
        let color = bool ? colors.niceBlue : .gray
        //let title = bool ? "m2" : "m2"
        let titleColor = bool ? .black : colors.niceBlue
        
        //setTitle( title , for: .normal )
        setTitleColor( titleColor , for: .normal)
        backgroundColor = color
        
    }
}
