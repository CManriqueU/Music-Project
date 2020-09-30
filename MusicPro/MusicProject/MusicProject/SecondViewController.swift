//
//  SecondViewController.swift
//  MusicProject
//
//  Created by Carlos A Manrique Ucharico on 4/13/20.
//

import Foundation       //  cannot remember for what, but it can be deleted
import AVFoundation
import UIKit

class SecondViewController : UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    // this variable must not be outside the viewDidLoad() if I want to pass it
    var numberOfButtons = Int();
    var optionsArray: [Int] = []
    var mainOptionsArray: [Int] = []
    //var newArray: Array<Int> = Array(repeating: 0, count: numberOfButtons)
     var randomValue = 111
    
   
    override func viewDidLoad() {
        
        //***   DECLARING THE SOUNDS  ***
        //   we are using bundle to find our way inside the app to go find the file name "2m-segun..." of type "mp3"
        
        let m2_1 = Bundle.main.path( forResource: "2m-Segunda menor-Do-Reb", ofType: "mp3")
        let m2_2 = Bundle.main.path( forResource: "2m-Segunda menor-Fa-Solb", ofType: "mp3")
        let m2_3 = Bundle.main.path( forResource: "2m-Segunda menor-Mi-Fa", ofType: "mp3")
        let m2_4 = Bundle.main.path( forResource: "2m-Segunda menor-Re-Mib", ofType: "mp3")
        let m2_5 = Bundle.main.path( forResource: "2m-Segunda menor-Sol-lab", ofType: "mp3")
        
        let m3_1 = Bundle.main.path( forResource: "3m-Tercera menor-Do-Mib", ofType: "mp3")
        let m3_2 = Bundle.main.path( forResource: "3m-Tercera menor-Fa-Lab", ofType: "mp3")
        let m3_3 = Bundle.main.path( forResource: "3m-Tercera menor-Mi-Sol", ofType: "mp3")
        let m3_4 = Bundle.main.path( forResource: "3m-Tercera menor-Re-Fa", ofType: "mp3")
        let m3_5 = Bundle.main.path( forResource: "3m-Tercera menor-Sol-Sib", ofType: "mp3")
        
        let m6_1 = Bundle.main.path( forResource: "m6 Do-Lab", ofType: "mp3")
        let m6_2 = Bundle.main.path( forResource: "m6 Fa-Reb", ofType: "mp3")
        let m6_3 = Bundle.main.path( forResource: "m6 Mi-Do", ofType: "mp3")
        let m6_4 = Bundle.main.path( forResource: "m6 Re-Sib", ofType: "mp3")
        let m6_5 = Bundle.main.path( forResource: "m6 Sol-Mib", ofType: "mp3")
        
        let m7_1 = Bundle.main.path( forResource: "m7 Mi-Re", ofType: "mp3")
        let m7_2 = Bundle.main.path( forResource: "m7 Do-Sib", ofType: "mp3")
        let m7_3 = Bundle.main.path( forResource: "m7 Re-Do", ofType: "mp3")
        let m7_4 = Bundle.main.path( forResource: "m7 Sol-Fa", ofType: "mp3")
        let m7_5 = Bundle.main.path( forResource: "m7 Fa-Mib", ofType: "mp3")
        
        let M2_1 = Bundle.main.path( forResource: "2M-Segunda Mayor-Do-Re", ofType: "mp3")
        let M2_2 = Bundle.main.path( forResource: "2M-Segunda Mayor-Fa-Sol", ofType: "mp3")
        let M2_3 = Bundle.main.path( forResource: "2M-Segunda Mayor-Mi-Fa#", ofType: "mp3")
        let M2_4 = Bundle.main.path( forResource: "2M-Segunda Mayor-Re-Mi", ofType: "mp3")
        let M2_5 = Bundle.main.path( forResource: "2M-Segunda Mayor-Sol-La", ofType: "mp3")
        
        let M3_1 = Bundle.main.path( forResource: "3M-Tercera Mayor- Do-Mi", ofType: "mp3")
        let M3_2 = Bundle.main.path( forResource: "3M-Tercera Mayor- Fa-La", ofType: "mp3")
        let M3_3 = Bundle.main.path( forResource: "3M-Tercera Mayor- Mi-Sol#", ofType: "mp3")
        let M3_4 = Bundle.main.path( forResource: "3M-Tercera Mayor- Re-Fa#", ofType: "mp3")
        let M3_5 = Bundle.main.path( forResource: "3M-Tercera Mayor- Sol-Si", ofType: "mp3")
        
        let M6_1 = Bundle.main.path( forResource: "M6 Do-La", ofType: "mp3")
        let M6_2 = Bundle.main.path( forResource: "M6 Fa-Re", ofType: "mp3")
        let M6_3 = Bundle.main.path( forResource: "M6 Mi-Do#", ofType: "mp3")
        let M6_4 = Bundle.main.path( forResource: "M6 Re-Si", ofType: "mp3")
        let M6_5 = Bundle.main.path( forResource: "M6 Sol-Mi", ofType: "mp3")
        
        let M7_1 = Bundle.main.path( forResource: "M7 Do-Si", ofType: "mp3")
        let M7_2 = Bundle.main.path( forResource: "M7 Fa-Mi", ofType: "mp3")
        let M7_3 = Bundle.main.path( forResource: "M7 Mi-Re#", ofType: "mp3")
        let M7_4 = Bundle.main.path( forResource: "M7 Re-Do#", ofType: "mp3")
        let M7_5 = Bundle.main.path( forResource: "M7 Sol-Fa#", ofType: "mp3")
        
        let P4_1 = Bundle.main.path( forResource: "P4 Do-Fa", ofType: "mp3")
        let P4_2 = Bundle.main.path( forResource: "P4 Fa-Sib", ofType: "mp3")
        let P4_3 = Bundle.main.path( forResource: "P4 Mi-La", ofType: "mp3")
        let P4_4 = Bundle.main.path( forResource: "P4 Re-Sol", ofType: "mp3")
        let P4_5 = Bundle.main.path( forResource: "P4 Sol-Do", ofType: "mp3")
        
        let P5_1 = Bundle.main.path( forResource: "P5 Do-Sol", ofType: "mp3")
        let P5_2 = Bundle.main.path( forResource: "P5 Fa-Do", ofType: "mp3")
        let P5_3 = Bundle.main.path( forResource: "P5 Mi-Si", ofType: "mp3")
        let P5_4 = Bundle.main.path( forResource: "P5 Re-La", ofType: "mp3")
        let P5_5 = Bundle.main.path( forResource: "P5 Sol-Re", ofType: "mp3")
        
        let P8_1 = Bundle.main.path( forResource: "P8 Do-Do", ofType: "mp3")
        let P8_2 = Bundle.main.path( forResource: "P8 Fa-Fa", ofType: "mp3")
        let P8_3 = Bundle.main.path( forResource: "P8 Mi-Mi", ofType: "mp3")
        let P8_4 = Bundle.main.path( forResource: "P8 Re-Re", ofType: "mp3")
        let P8_5 = Bundle.main.path( forResource: "P8 Sol-Sol", ofType: "mp3")
        
        let Tritone_1 = Bundle.main.path( forResource: "TT Do-Fa#", ofType: "mp3")
        let Tritone_2 = Bundle.main.path( forResource: "TT Fa-Si", ofType: "mp3")
        let Tritone_3 = Bundle.main.path( forResource: "TT Mi-La#", ofType: "mp3")
        let Tritone_4 = Bundle.main.path( forResource: "TT Re-Sol#", ofType: "mp3")
        let Tritone_5 = Bundle.main.path( forResource: "TT Sol-Do#", ofType: "mp3")
        
        var arraySounds = [ m2_1 , m2_2 , m2_3 , m2_4 , m2_5 ,
                            m3_1 , m3_2 , m3_3 , m3_4 , m3_5 ,
                            m6_1 , m6_2 , m6_3 , m6_4 , m6_5 ,
                            m7_1 , m7_2 , m7_3 , m7_4 , m7_5 ,
                            
                            M2_1 , M2_2 , M2_3 , M2_4 , M2_5 ,
                            M3_1 , M3_2 , M3_3 , M3_4 , M3_5 ,
                            M6_1 , M6_2 , M6_3 , M6_4 , M6_5 ,
                            M7_1 , M7_2 , M7_3 , M7_4 , M7_5 ,
                            
                            P4_1 , P4_2 , P4_3 , P4_4 , P4_5 ,
                            P5_1 , P5_2 , P5_3 , P5_4 , P5_5 ,
                            P8_1 , P8_2 , P8_3 , P8_4 , P8_5 ,
                            Tritone_1 , Tritone_2 , Tritone_3 , Tritone_4 , Tritone_5]
        
        
        
        //var newArray: Array<Int> = Array(repeating: 0, count: numberOfButtons)
        //var stringArray: Array<String> = Array( repeating: "", count: optionsArray.count )
        var valuesArray : Array<Int> = Array( repeating: 0, count: numberOfButtons)
        var stringArray = ["000","m2","m3","m6","m7","M2","3M","M6","M7","P4","P5","P8","Tritone"]
        var myIndex = 0;
        // I do not really need the tritone
        
        
        
        //  the code below transports only the values different than zero into the new array
        for i in optionsArray{
            if i != 0{
                valuesArray[myIndex] = i
                myIndex = myIndex + 1
            }
        }
        
        ////////////////////////
        //   the problem is here, I have to delete the zeros
        
        print("size : \(optionsArray.count)")
        for j in optionsArray{
            print("...\(j)")
        }
        
        print("THIS ARE THE VALUES ALONE size : \(optionsArray.count)")
        for j in valuesArray{
            print("...\(j)")                            //   i did one and 6 so it should save it in the array
        }
        
        
        ////////////////////
        
        // predefining size
        var finalArray: Array<Int> = Array(repeating: 0, count: 0 )
        
        for j in valuesArray {
            switch j {
                case 1:
                    finalArray.append( 0 ) ; finalArray.append( 1 ) ; finalArray.append( 2 ) ; finalArray.append( 3 )
                    ; finalArray.append( 4 );
                    break;
                case 2:
                    finalArray.append( 5 ) ; finalArray.append( 6 ) ; finalArray.append( 7 ) ; finalArray.append( 8 )
                    ; finalArray.append( 9 );
                    break;
                case 3:
                    finalArray.append( 10 ) ; finalArray.append( 11 ) ; finalArray.append( 12 ) ; finalArray.append( 13 ); finalArray.append( 14 );
                    break;
                case 4:
                    finalArray.append( 15 ) ; finalArray.append( 16 ) ; finalArray.append( 17 ) ; finalArray.append( 18 ); finalArray.append( 19 );
                    break;
                case 5:
                    finalArray.append( 20 ) ; finalArray.append( 21 ) ; finalArray.append( 22 ) ; finalArray.append( 23 ); finalArray.append( 24 );
                    break;
                case 6:
                    finalArray.append( 25 ) ; finalArray.append( 26 ) ; finalArray.append( 27 ) ; finalArray.append( 28 ); finalArray.append( 29 );
                    break;
                case 7:
                    finalArray.append( 30 ) ; finalArray.append( 31 ) ; finalArray.append( 32 ) ; finalArray.append( 33 ); finalArray.append( 34 );
                    break;
                case 8:
                    finalArray.append( 35 ) ; finalArray.append( 36 ) ; finalArray.append( 37 ) ; finalArray.append( 38 ); finalArray.append( 39 );
                    break;
                case 9:
                    finalArray.append( 40 ) ; finalArray.append( 41 ) ; finalArray.append( 42 ) ; finalArray.append( 43 ); finalArray.append( 44 );
                    break;
                case 10:
                    finalArray.append( 45 ) ; finalArray.append( 46 ) ; finalArray.append( 47 ) ; finalArray.append( 48 ); finalArray.append( 49 );
                    break;
                case 11:
                    finalArray.append( 50 ) ; finalArray.append( 51 ) ; finalArray.append( 52 ) ; finalArray.append( 53 ); finalArray.append( 54 );
                    break;
                case 12:
                    finalArray.append( 55 ) ; finalArray.append( 56 ) ; finalArray.append( 57 ) ; finalArray.append( 58 ); finalArray.append( 59 );
                    break;
                default:
                    print("ERROR: VALUE NOT FOUND")
            }
        }
        
        for mo in finalArray{
            print("arr   \(finalArray)")
        }
        
        //  ******  PLAYING AUDIO  *****
        
        // I need to add the limits , I CANNOT USE THE LINE BELOW
        print("this is the upper limit of the array :  \(finalArray.count)")
        var randomIndex = Int.random(in: 0...(finalArray.count-1) )
        randomValue = finalArray[randomIndex]
        print("random value from 0 to \(finalArray.count-1)")
        print("playing now :  \(randomIndex) ---- )" )
        print("playing: \(randomValue)")
        
        do{
            audioPlayer = try AVAudioPlayer( contentsOf: URL(fileURLWithPath: arraySounds[randomValue]!))
        }catch{ print("error")}
        
        audioPlayer.play()
        
        //***********************************
        
        
        print("this is the upper limit of the array before switch control:  \(finalArray.count)")
        switch numberOfButtons{
            
            case 1:
                let button_1 = CMToogleButton.init()
                
                button_1.frame =  CGRect(x:130 , y:500 , width: 55 , height : 55)
                
                button_1.layer.cornerRadius = 27.5
                
                button_1.setTitle( "m2", for: .normal)
                button_1.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                button_1.backgroundColor = UIColor.gray
                button_1.setTitleColor(.blue, for: .normal)
                self.view.addSubview(button_1)
            
            case 2:
                //  if the last element is tritone
                if optionsArray[optionsArray.count - 1] == 12{
                    // first button
                    let button_1 = CMToogleButton.init()
                    button_1.frame =  CGRect(x:100 , y:500 , width: 55 , height : 55)
                    button_1.layer.cornerRadius = 27.5
                    button_1.setTitle( stringArray[ valuesArray[0] ], for: .normal)
                    button_1.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_1.backgroundColor = UIColor.gray
                    button_1.setTitleColor(.blue, for: .normal)
                    
                    //print("*************\(button_1.titleLabel!.text))")
                    self.view.addSubview(button_1)
                    
                    //  second button
                    let button_2 = CMToogleButton.init()
                    button_2.frame =  CGRect(x:200 , y:500 , width: 100 , height : 55)
                    button_2.layer.cornerRadius = 27.5
                    
                    button_2.setTitle( "Tritone", for: .normal)
                    button_2.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_2.backgroundColor = UIColor.gray
                    button_2.setTitleColor(.blue, for: .normal)
                    
                    self.view.addSubview(button_2)
                }else{
                
                    // first button
                    let button_1 = CMToogleButton.init()
                    button_1.frame =  CGRect(x:120 , y:500 , width: 55 , height : 55)
                    button_1.layer.cornerRadius = 27.5
                    button_1.setTitle( stringArray[ valuesArray[0] ], for: .normal)
                    button_1.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_1.backgroundColor = UIColor.gray
                    button_1.setTitleColor(.blue, for: .normal)
                
                    self.view.addSubview(button_1)
                    //  second button
                    let button_2 = CMToogleButton.init()
                    button_2.frame =  CGRect(x:200 , y:500 , width: 55 , height : 55)
                    button_2.layer.cornerRadius = 27.5
                
                    button_2.setTitle( stringArray[ valuesArray[1] ], for: .normal)
                    button_2.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_2.backgroundColor = UIColor.gray
                    button_2.setTitleColor(.blue, for: .normal)
                
                    self.view.addSubview(button_2)
                }
                break;
            case 3:
                
                if optionsArray[ optionsArray.count - 1] == 12{
                    // first button
                    let button_1 = CMToogleButton.init()
                    button_1.frame = CGRect(x:50 , y:500 , width: 55 , height : 55 )
                    button_1.layer.cornerRadius = 27.5
                    button_1.setTitle( stringArray[ valuesArray[0] ], for: .normal)
                    button_1.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_1.backgroundColor = UIColor.gray
                    button_1.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_1)
                    
                    //  second button
                    let button_2 = CMToogleButton.init()
                    button_2.frame =  CGRect(x:150 , y:500 , width: 55 , height : 55)
                    button_2.layer.cornerRadius = 27.5
                    
                    button_2.setTitle( stringArray[ valuesArray[1] ], for: .normal)
                    button_2.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_2.backgroundColor = UIColor.gray
                    button_2.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_2)
                    
                    //  THIRD button
                    let button_3 = CMToogleButton.init()
                    button_3.frame =  CGRect(x:250 , y:500 , width: 100 , height : 55)
                    button_3.layer.cornerRadius = 27.5
                    
                    button_3.setTitle( "Tritone", for: .normal)
                    button_3.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_3.backgroundColor = UIColor.gray
                    button_3.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_3)
            
                }else{
                
                    // first button
                    let button_1 = CMToogleButton.init()
                    button_1.frame =  CGRect(x:50 , y:500 , width: 55 , height : 55)
                    button_1.layer.cornerRadius = 27.5
                    button_1.setTitle( stringArray[ valuesArray[0] ], for: .normal)
                    button_1.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_1.backgroundColor = UIColor.gray
                    button_1.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_1)
                
                    //  second button
                    let button_2 = CMToogleButton.init()
                    button_2.frame =  CGRect(x:150 , y:500 , width: 55 , height : 55)
                    button_2.layer.cornerRadius = 27.5
                
                    button_2.setTitle( stringArray[ valuesArray[1] ], for: .normal)
                    button_2.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_2.backgroundColor = UIColor.gray
                    button_2.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_2)
                
                    //  THIRD button
                    let button_3 = CMToogleButton.init()
                    button_3.frame =  CGRect(x:250 , y:500 , width: 55 , height : 55)
                    button_3.layer.cornerRadius = 27.5
                
                    button_3.setTitle( stringArray[ valuesArray[2] ], for: .normal)
                    button_3.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_3.backgroundColor = UIColor.gray
                    button_3.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_3)
                }
                break;
            case 4:
                
                if optionsArray[ optionsArray.count - 1 ] == 12{
                    // first button
                    let button_1 = CMToogleButton.init()
                    button_1.frame =  CGRect(x:70 , y:500 , width: 55 , height : 55)
                    button_1.layer.cornerRadius = 27.5
                    button_1.setTitle( stringArray[ valuesArray[0] ], for: .normal)
                    button_1.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_1.backgroundColor = UIColor.gray
                    button_1.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_1)
                    
                    //  second button
                    let button_2 = CMToogleButton.init()
                    button_2.frame =  CGRect(x:130 , y:500 , width: 55 , height : 55)
                    button_2.layer.cornerRadius = 27.5
                    
                    button_2.setTitle( stringArray[ valuesArray[1] ], for: .normal)
                    button_2.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_2.backgroundColor = UIColor.gray
                    button_2.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_2)
                    
                    //  THIRD button
                    let button_3 = CMToogleButton.init()
                    button_3.frame =  CGRect(x:190 , y:500 , width: 55 , height : 55)
                    button_3.layer.cornerRadius = 27.5
                    
                    button_3.setTitle( stringArray[ valuesArray[2] ], for: .normal)
                    button_3.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_3.backgroundColor = UIColor.gray
                    button_3.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_3)
                    
                    //  FOURTH button
                    let button_4 = CMToogleButton.init()
                    button_4.frame =  CGRect(x:250 , y:500 , width: 100 , height : 50)
                    button_4.layer.cornerRadius = 27.5
                    
                    button_4.setTitle( "Tritone", for: .normal)
                    button_4.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_4.backgroundColor = UIColor.gray
                    button_4.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_4)
                }else{
                    // first button
                    let button_1 = CMToogleButton.init()
                    button_1.frame =  CGRect(x:90 , y:500 , width: 55 , height : 55)
                    button_1.layer.cornerRadius = 27.5
                    button_1.setTitle( stringArray[ valuesArray[0] ], for: .normal)
                    button_1.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_1.backgroundColor = UIColor.gray
                    button_1.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_1)
                    //  second button
                    let button_2 = CMToogleButton.init()
                    button_2.frame =  CGRect(x:150 , y:500 , width: 55 , height : 55)
                    button_2.layer.cornerRadius = 27.5
                
                    button_2.setTitle( stringArray[ valuesArray[1] ], for: .normal)
                    button_2.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_2.backgroundColor = UIColor.gray
                    button_2.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_2)
                
                    //  THIRD button
                    let button_3 = CMToogleButton.init()
                    button_3.frame =  CGRect(x:210 , y:500 , width: 55 , height : 55)
                    button_3.layer.cornerRadius = 27.5
                
                    button_3.setTitle( stringArray[ valuesArray[2] ], for: .normal)
                    button_3.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_3.backgroundColor = UIColor.gray
                    button_3.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_3)
                
                    //  FOURTH button
                    let button_4 = CMToogleButton.init()
                    button_4.frame =  CGRect(x:270 , y:500 , width: 55 , height : 55)
                    button_4.layer.cornerRadius = 27.5
                
                    button_4.setTitle( stringArray[ valuesArray[3] ], for: .normal)
                    button_4.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_4.backgroundColor = UIColor.gray
                    button_4.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_4)
                }
                break;
            case 5:
                
                if optionsArray[optionsArray.count - 1] == 12 {
                    
                    // first button
                    let button_1 = CMToogleButton.init()
                    button_1.frame =  CGRect(x:78 , y:500 , width: 55 , height : 55)
                    button_1.layer.cornerRadius = 27.5
                    button_1.setTitle( stringArray[ valuesArray[0] ], for: .normal)
                    button_1.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_1.backgroundColor = UIColor.gray
                    button_1.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_1)
                    //  second button
                    let button_2 = CMToogleButton.init()
                    button_2.frame =  CGRect(x:178 , y:500 , width: 55 , height : 55)
                    button_2.layer.cornerRadius = 27.5
                
                    button_2.setTitle( stringArray[ valuesArray[1] ], for: .normal)
                    button_2.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_2.backgroundColor = UIColor.gray
                    button_2.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_2)
                
                    //  THIRD button
                    let button_3 = CMToogleButton.init()
                    button_3.frame =  CGRect(x:278 , y:500 , width: 55 , height : 55)
                    button_3.layer.cornerRadius = 27.5
                
                    button_3.setTitle( stringArray[ valuesArray[2] ], for: .normal)
                    button_3.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_3.backgroundColor = UIColor.gray
                    button_3.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_3)
                
                    //  FOURTH button
                    let button_4 = CMToogleButton.init()
                    button_4.frame =  CGRect(x:103 , y:565 , width: 55 , height : 55)
                    button_4.layer.cornerRadius = 27.5
                
                    button_4.setTitle( stringArray[ valuesArray[3] ], for: .normal)
                    button_4.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_4.backgroundColor = UIColor.gray
                    button_4.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_4)
                
                    // FIFTH button
                    let button_5 = CMToogleButton.init()
                    button_5.frame =  CGRect(x:203 , y:565 , width: 100 , height : 55)
                    button_5.layer.cornerRadius = 27.5
                
                    button_5.setTitle( "Tritone", for: .normal)
                    button_5.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_5.backgroundColor = UIColor.gray
                    button_5.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_5)
                }else{
                    // first button
                    let button_1 = CMToogleButton.init()
                    button_1.frame =  CGRect(x:78 , y:500 , width: 55 , height : 55)
                    button_1.layer.cornerRadius = 27.5
                    button_1.setTitle( stringArray[ valuesArray[0] ], for: .normal)
                    button_1.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_1.backgroundColor = UIColor.gray
                    button_1.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_1)
                    //  second button
                    let button_2 = CMToogleButton.init()
                    button_2.frame =  CGRect(x:178 , y:500 , width: 55 , height : 55)
                    button_2.layer.cornerRadius = 27.5
                    
                    button_2.setTitle( stringArray[ valuesArray[1] ], for: .normal)
                    button_2.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_2.backgroundColor = UIColor.gray
                    button_2.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_2)
                    
                    //  THIRD button
                    let button_3 = CMToogleButton.init()
                    button_3.frame =  CGRect(x:278 , y:500 , width: 55 , height : 55)
                    button_3.layer.cornerRadius = 27.5
                    
                    button_3.setTitle( stringArray[ valuesArray[2] ], for: .normal)
                    button_3.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_3.backgroundColor = UIColor.gray
                    button_3.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_3)
                    
                    //  FOURTH button
                    let button_4 = CMToogleButton.init()
                    button_4.frame =  CGRect(x:128 , y:565 , width: 55 , height : 55)
                    button_4.layer.cornerRadius = 27.5
                    
                    button_4.setTitle( stringArray[ valuesArray[3] ], for: .normal)
                    button_4.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_4.backgroundColor = UIColor.gray
                    button_4.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_4)
                    
                    // FIFTH button
                    let button_5 = CMToogleButton.init()
                    button_5.frame =  CGRect(x:228 , y:565 , width: 55 , height : 55)
                    button_5.layer.cornerRadius = 27.5
                    
                    button_5.setTitle( stringArray[ valuesArray[4] ], for: .normal)
                    button_5.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_5.backgroundColor = UIColor.gray
                    button_5.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_5)
                }
                break;
            case 6:
                if optionsArray[ optionsArray.count - 1 ] == 12{
                    // first button
                    let button_1 = CMToogleButton.init()
                    button_1.frame =  CGRect(x:78 , y:500 , width: 55 , height : 55)
                    button_1.layer.cornerRadius = 27.5
                    button_1.setTitle( stringArray[ valuesArray[0] ], for: .normal)
                    button_1.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_1.backgroundColor = UIColor.gray
                    button_1.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_1)
                    
                    //  second button
                    let button_2 = CMToogleButton.init()
                    button_2.frame =  CGRect(x:178 , y:500 , width: 55 , height : 55)
                    button_2.layer.cornerRadius = 27.5
                    
                    button_2.setTitle( stringArray[ valuesArray[1] ], for: .normal)
                    button_2.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_2.backgroundColor = UIColor.gray
                    button_2.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_2)
                    
                    //  THIRD button
                    let button_3 = CMToogleButton.init()
                    button_3.frame =  CGRect(x:278 , y:500 , width: 55 , height : 55)
                    button_3.layer.cornerRadius = 27.5
                    
                    button_3.setTitle( stringArray[ valuesArray[2] ], for: .normal)
                    button_3.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_3.backgroundColor = UIColor.gray
                    button_3.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_3)
                    
                    //  FOURTH button
                    let button_4 = CMToogleButton.init()
                    button_4.frame =  CGRect(x:60 , y:565 , width: 55 , height : 55)
                    button_4.layer.cornerRadius = 27.5
                    
                    button_4.setTitle( stringArray[ valuesArray[3] ], for: .normal)
                    button_4.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_4.backgroundColor = UIColor.gray
                    button_4.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_4)
                    
                    // FIFTH button
                    let button_5 = CMToogleButton.init()
                    button_5.frame =  CGRect(x:160 , y:565 , width: 55 , height : 55)
                    button_5.layer.cornerRadius = 27.5
                    
                    button_5.setTitle( stringArray[ valuesArray[4] ], for: .normal)
                    button_5.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_5.backgroundColor = UIColor.gray
                    button_5.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_5)
                    
                    // SIXTH button
                    let button_6 = CMToogleButton.init()
                    button_6.frame =  CGRect(x:260 , y:565 , width: 100 , height : 55)
                    button_6.layer.cornerRadius = 27.5
                    
                    button_6.setTitle( "Tritone", for: .normal)
                    button_6.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_6.backgroundColor = UIColor.gray
                    button_6.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_6)
                }else{
                    // first button
                    let button_1 = CMToogleButton.init()
                    button_1.frame =  CGRect(x:78 , y:500 , width: 55 , height : 55)
                    button_1.layer.cornerRadius = 27.5
                    button_1.setTitle( stringArray[ valuesArray[0] ], for: .normal)
                    button_1.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_1.backgroundColor = UIColor.gray
                    button_1.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_1)
                
                    //  second button
                    let button_2 = CMToogleButton.init()
                    button_2.frame =  CGRect(x:178 , y:500 , width: 55 , height : 55)
                    button_2.layer.cornerRadius = 27.5
                
                    button_2.setTitle( stringArray[ valuesArray[1] ], for: .normal)
                    button_2.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_2.backgroundColor = UIColor.gray
                    button_2.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_2)
                
                    //  THIRD button
                    let button_3 = CMToogleButton.init()
                    button_3.frame =  CGRect(x:278 , y:500 , width: 55 , height : 55)
                    button_3.layer.cornerRadius = 27.5
                
                    button_3.setTitle( stringArray[ valuesArray[2] ], for: .normal)
                    button_3.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_3.backgroundColor = UIColor.gray
                    button_3.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_3)
                
                    //  FOURTH button
                    let button_4 = CMToogleButton.init()
                    button_4.frame =  CGRect(x:78 , y:565 , width: 55 , height : 55 )
                    button_4.layer.cornerRadius = 27.5
                
                    button_4.setTitle( stringArray[ valuesArray[3] ], for: .normal)
                    button_4.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_4.backgroundColor = UIColor.gray
                    button_4.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_4)
                
                    // FIFTH button
                    let button_5 = CMToogleButton.init()
                    button_5.frame =  CGRect(x:178 , y:565 , width: 55 , height : 55)
                    button_5.layer.cornerRadius = 27.5
                
                    button_5.setTitle( stringArray[ valuesArray[4] ], for: .normal)
                    button_5.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_5.backgroundColor = UIColor.gray
                    button_5.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_5)
                
                    // SIXTH button
                    let button_6 = CMToogleButton.init()
                    button_6.frame =  CGRect(x:278 , y:565 , width: 55 , height : 55)
                    button_6.layer.cornerRadius = 27.5
                
                    button_6.setTitle( stringArray[ valuesArray[5] ], for: .normal)
                    button_6.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_6.backgroundColor = UIColor.gray
                    button_6.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_6)
                }
                break;
            case 7:
                if optionsArray[ optionsArray.count - 1 ] == 12{
                    // first button
                    let button_1 = CMToogleButton.init()
                    button_1.frame =  CGRect(x:90 , y:500 , width: 55 , height : 55)
                    button_1.layer.cornerRadius = 27.5
                    button_1.setTitle( stringArray[ valuesArray[0] ] , for: .normal )
                    button_1.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_1.backgroundColor = UIColor.gray
                    button_1.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_1)
                    //  second button
                    let button_2 = CMToogleButton.init()
                    button_2.frame =  CGRect(x:150 , y:500 , width: 55 , height : 55)
                    button_2.layer.cornerRadius = 27.5
                    
                    button_2.setTitle( stringArray[ valuesArray[1] ], for: .normal)
                    button_2.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_2.backgroundColor = UIColor.gray
                    button_2.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_2)
                    
                    //  THIRD button
                    let button_3 = CMToogleButton.init()
                    button_3.frame =  CGRect(x:210 , y:500 , width: 55 , height : 55)
                    button_3.layer.cornerRadius = 27.5
                    
                    button_3.setTitle( stringArray[ valuesArray[2] ], for: .normal)
                    button_3.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_3.backgroundColor = UIColor.gray
                    button_3.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_3)
                    
                    //  FOURTH button
                    let button_4 = CMToogleButton.init()
                    button_4.frame =  CGRect(x:270 , y:500 , width: 55 , height : 55 )
                    button_4.layer.cornerRadius = 27.5
                    
                    button_4.setTitle( stringArray[ valuesArray[3] ], for: .normal)
                    button_4.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_4.backgroundColor = UIColor.gray
                    button_4.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_4)
                    
                    // FIFTH button
                    let button_5 = CMToogleButton.init()
                    button_5.frame =  CGRect(x:90 , y:565 , width: 55 , height : 55)
                    button_5.layer.cornerRadius = 27.5
                    
                    button_5.setTitle( stringArray[ valuesArray[4] ], for: .normal)
                    button_5.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_5.backgroundColor = UIColor.gray
                    button_5.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_5)
                    
                    // SIXTH button
                    let button_6 = CMToogleButton.init()
                    button_6.frame =  CGRect(x:150 , y:565 , width: 55 , height : 55)
                    button_6.layer.cornerRadius = 27.5
                    
                    button_6.setTitle( stringArray[ valuesArray[5] ], for: .normal)
                    button_6.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_6.backgroundColor = UIColor.gray
                    button_6.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_6)
                    
                    // SEVENTH button
                    let button_7 = CMToogleButton.init()
                    button_7.frame =  CGRect(x:210 , y:565 , width: 100 , height : 55)
                    button_7.layer.cornerRadius = 27.5
                    
                    button_7.setTitle( "Tritone", for: .normal)
                    button_7.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_7.backgroundColor = UIColor.gray
                    button_7.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_7)
                }else{
                    // first button
                    let button_1 = CMToogleButton.init()
                    button_1.frame =  CGRect(x:90 , y:500 , width: 55 , height : 55)
                    button_1.layer.cornerRadius = 27.5
                    button_1.setTitle( stringArray[ valuesArray[0] ], for: .normal)
                    button_1.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_1.backgroundColor = UIColor.gray
                    button_1.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_1)
                    //  second button
                    let button_2 = CMToogleButton.init()
                    button_2.frame =  CGRect(x:150 , y:500 , width: 55 , height : 55 )
                    button_2.layer.cornerRadius = 27.5
                
                    button_2.setTitle( stringArray[ valuesArray[1] ], for: .normal)
                    button_2.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_2.backgroundColor = UIColor.gray
                    button_2.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_2)
                
                    //  THIRD button
                    let button_3 = CMToogleButton.init()
                    button_3.frame =  CGRect(x:210 , y:500 , width: 55 , height : 55 )
                    button_3.layer.cornerRadius = 27.5
                
                    button_3.setTitle( stringArray[ valuesArray[2] ], for: .normal)
                    button_3.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_3.backgroundColor = UIColor.gray
                    button_3.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_3)
                
                    //  FOURTH button
                    let button_4 = CMToogleButton.init()
                    button_4.frame =  CGRect(x:270 , y:500 , width: 55 , height : 55)
                    button_4.layer.cornerRadius = 27.5
                
                    button_4.setTitle( stringArray[ valuesArray[3] ], for: .normal)
                    button_4.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_4.backgroundColor = UIColor.gray
                    button_4.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_4)
                
                    // FIFTH button
                    let button_5 = CMToogleButton.init()
                    button_5.frame =  CGRect(x:120 , y:565 , width: 55 , height : 55)
                    button_5.layer.cornerRadius = 27.5
                
                    button_5.setTitle( stringArray[ valuesArray[4] ], for: .normal)
                    button_5.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_5.backgroundColor = UIColor.gray
                    button_5.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_5)
                
                    // SIXTH button
                    let button_6 = CMToogleButton.init()
                    button_6.frame =  CGRect(x:180 , y:565 , width: 55 , height : 55)
                    button_6.layer.cornerRadius = 27.5
                
                    button_6.setTitle( stringArray[ valuesArray[5] ], for: .normal)
                    button_6.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_6.backgroundColor = UIColor.gray
                    button_6.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_6)
                
                    // SEVENTH button
                    let button_7 = CMToogleButton.init()
                    button_7.frame =  CGRect(x:240 , y:565 , width: 55 , height : 55 )
                    button_7.layer.cornerRadius = 27.5
                
                    button_7.setTitle( stringArray[ valuesArray[6] ], for: .normal)
                    button_7.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_7.backgroundColor = UIColor.gray
                    button_7.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_7)
                }
                break;
            case 8:
                if optionsArray[ optionsArray.count - 1 ] == 12 {
                    // first button
                    let button_1 = CMToogleButton.init()
                    button_1.frame =  CGRect(x:78 , y:460 , width: 55 , height : 55 )
                    button_1.layer.cornerRadius = 27.5
                    button_1.setTitle( stringArray[ valuesArray[0] ], for: .normal)
                    button_1.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_1.backgroundColor = UIColor.gray
                    button_1.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_1)
                    //  second button
                    let button_2 = CMToogleButton.init()
                    button_2.frame =  CGRect(x:178 , y:460 , width: 55 , height : 55)
                    button_2.layer.cornerRadius = 27.5
                    
                    button_2.setTitle( stringArray[ valuesArray[1] ], for: .normal)
                    button_2.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_2.backgroundColor = UIColor.gray
                    button_2.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_2)
                    
                    //  THIRD button
                    let button_3 = CMToogleButton.init()
                    button_3.frame =  CGRect(x:278 , y:460 , width: 55 , height : 55)
                    button_3.layer.cornerRadius = 27.5
                    
                    button_3.setTitle( stringArray[ valuesArray[2] ], for: .normal)
                    button_3.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_3.backgroundColor = UIColor.gray
                    button_3.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_3)
                    
                    //  FOURTH button
                    let button_4 = CMToogleButton.init()
                    button_4.frame =  CGRect(x:78 , y:525 , width: 55 , height : 55)
                    button_4.layer.cornerRadius = 27.5
                    
                    button_4.setTitle( stringArray[ valuesArray[3] ], for: .normal)
                    button_4.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_4.backgroundColor = UIColor.gray
                    button_4.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_4)
                    
                    // FIFTH button
                    let button_5 = CMToogleButton.init()
                    button_5.frame =  CGRect(x:178 , y:525 , width: 55 , height : 55)
                    button_5.layer.cornerRadius = 27.5
                    
                    button_5.setTitle( stringArray[ valuesArray[4] ], for: .normal)
                    button_5.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_5.backgroundColor = UIColor.gray
                    button_5.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_5)
                    
                    // SIXTH button
                    let button_6 = CMToogleButton.init()
                    button_6.frame =  CGRect(x:278 , y:525 , width: 55 , height : 55)
                    button_6.layer.cornerRadius = 27.5
                    
                    button_6.setTitle( stringArray[ valuesArray[5] ], for: .normal)
                    button_6.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_6.backgroundColor = UIColor.gray
                    button_6.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_6)
                    
                    // SEVENTH button
                    let button_7 = CMToogleButton.init()
                    button_7.frame =  CGRect(x:78 , y:590 , width: 55 , height : 55)
                    button_7.layer.cornerRadius = 27.5
                    
                    button_7.setTitle( stringArray[ valuesArray[6] ], for: .normal)
                    button_7.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_7.backgroundColor = UIColor.gray
                    button_7.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_7)
                    
                    // EIGHTH button
                    let button_8 = CMToogleButton.init()
                    button_8.frame =  CGRect(x:178 , y:590 , width: 100 , height : 55)
                    button_8.layer.cornerRadius = 27.5
                    
                    button_8.setTitle( "Tritone", for: .normal)
                    button_8.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_8.backgroundColor = UIColor.gray
                    button_8.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_8)
                }else{
                    // first button
                    let button_1 = CMToogleButton.init()
                    button_1.frame =  CGRect(x:78 , y:460 , width: 55 , height : 55 )
                    button_1.layer.cornerRadius = 27.5
                    button_1.setTitle( stringArray[ valuesArray[0] ], for: .normal)
                    button_1.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_1.backgroundColor = UIColor.gray
                    button_1.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_1)
                    //  second button
                    let button_2 = CMToogleButton.init()
                    button_2.frame =  CGRect(x:178 , y:460 , width: 55 , height : 55)
                    button_2.layer.cornerRadius = 27.5
                    
                    button_2.setTitle( stringArray[ valuesArray[1] ], for: .normal)
                    button_2.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_2.backgroundColor = UIColor.gray
                    button_2.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_2)
                    
                    //  THIRD button
                    let button_3 = CMToogleButton.init()
                    button_3.frame =  CGRect(x:278 , y:460 , width: 55 , height : 55)
                    button_3.layer.cornerRadius = 27.5
                    
                    button_3.setTitle( stringArray[ valuesArray[2] ], for: .normal)
                    button_3.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_3.backgroundColor = UIColor.gray
                    button_3.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_3)
                    
                    //  FOURTH button
                    let button_4 = CMToogleButton.init()
                    button_4.frame =  CGRect(x:78 , y:525 , width: 55 , height : 55)
                    button_4.layer.cornerRadius = 27.5
                    
                    button_4.setTitle( stringArray[ valuesArray[3] ], for: .normal)
                    button_4.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_4.backgroundColor = UIColor.gray
                    button_4.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_4)
                    
                    // FIFTH button
                    let button_5 = CMToogleButton.init()
                    button_5.frame =  CGRect(x:178 , y:525 , width: 55 , height : 55)
                    button_5.layer.cornerRadius = 27.5
                    
                    button_5.setTitle( stringArray[ valuesArray[4] ], for: .normal)
                    button_5.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_5.backgroundColor = UIColor.gray
                    button_5.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_5)
                    
                    // SIXTH button
                    let button_6 = CMToogleButton.init()
                    button_6.frame =  CGRect(x:278 , y:525 , width: 55 , height : 55)
                    button_6.layer.cornerRadius = 27.5
                    
                    button_6.setTitle( stringArray[ valuesArray[5] ], for: .normal)
                    button_6.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_6.backgroundColor = UIColor.gray
                    button_6.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_6)
                    
                    // SEVENTH button
                    let button_7 = CMToogleButton.init()
                    button_7.frame =  CGRect(x:128 , y:590 , width: 55 , height : 55)
                    button_7.layer.cornerRadius = 27.5
                    
                    button_7.setTitle( stringArray[ valuesArray[6] ], for: .normal)
                    button_7.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_7.backgroundColor = UIColor.gray
                    button_7.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_7)
                    
                    // EIGHTH button
                    let button_8 = CMToogleButton.init()
                    button_8.frame =  CGRect(x:228 , y:590 , width: 55 , height : 55)
                    button_8.layer.cornerRadius = 27.5
                    
                    button_8.setTitle( stringArray[ valuesArray[7] ], for: .normal)
                    button_8.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_8.backgroundColor = UIColor.gray
                    button_8.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_8)
                }
                break;
            case 9:
                if optionsArray[ optionsArray.count - 1 ] == 12{
                    // first button
                    let button_1 = CMToogleButton.init()
                    button_1.frame =  CGRect(x:78 , y:460 , width: 55 , height : 55 )
                    button_1.layer.cornerRadius = 27.5
                    button_1.setTitle( stringArray[ valuesArray[0] ], for: .normal)
                    button_1.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_1.backgroundColor = UIColor.gray
                    button_1.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_1)
                    //  second button
                    let button_2 = CMToogleButton.init()
                    button_2.frame =  CGRect(x:178 , y:460 , width: 55 , height : 55)
                    button_2.layer.cornerRadius = 27.5
                    
                    button_2.setTitle( stringArray[ valuesArray[1] ], for: .normal)
                    button_2.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_2.backgroundColor = UIColor.gray
                    button_2.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_2)
                    
                    //  THIRD button
                    let button_3 = CMToogleButton.init()
                    button_3.frame =  CGRect(x:278 , y:460 , width: 55 , height : 55)
                    button_3.layer.cornerRadius = 27.5
                    
                    button_3.setTitle( stringArray[ valuesArray[2] ], for: .normal)
                    button_3.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_3.backgroundColor = UIColor.gray
                    button_3.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_3)
                    
                    //  FOURTH button
                    let button_4 = CMToogleButton.init()
                    button_4.frame =  CGRect(x:78 , y:525 , width: 55 , height : 55 )
                    button_4.layer.cornerRadius = 27.5
                    
                    button_4.setTitle( stringArray[ valuesArray[3] ], for: .normal)
                    button_4.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_4.backgroundColor = UIColor.gray
                    button_4.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_4)
                    
                    // FIFTH button
                    let button_5 = CMToogleButton.init()
                    button_5.frame =  CGRect(x:178 , y:525 , width: 55 , height : 55 )
                    button_5.layer.cornerRadius = 27.5
                    
                    button_5.setTitle( stringArray[ valuesArray[4] ], for: .normal)
                    button_5.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_5.backgroundColor = UIColor.gray
                    button_5.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_5)
                    
                    // SIXTH button
                    let button_6 = CMToogleButton.init()
                    button_6.frame =  CGRect(x:278 , y:525 , width: 55 , height : 55 )
                    button_6.layer.cornerRadius = 27.5
                    
                    button_6.setTitle( stringArray[ valuesArray[5] ], for: .normal)
                    button_6.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_6.backgroundColor = UIColor.gray
                    button_6.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_6)
                    
                    // SEVENTH button
                    let button_7 = CMToogleButton.init()
                    button_7.frame =  CGRect( x:60 , y:590 , width: 55 , height : 55 )
                    button_7.layer.cornerRadius = 27.5
                    
                    button_7.setTitle( stringArray[ valuesArray[6] ], for: .normal)
                    button_7.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_7.backgroundColor = UIColor.gray
                    button_7.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_7)
                    
                    // EIGHTH button
                    let button_8 = CMToogleButton.init()
                    button_8.frame =  CGRect( x:160 , y:590 , width: 55 , height : 55)
                    button_8.layer.cornerRadius = 27.5
                    
                    button_8.setTitle( stringArray[ valuesArray[7] ], for: .normal)
                    button_8.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_8.backgroundColor = UIColor.gray
                    button_8.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_8)
                    
                    //  NINETH button
                    let button_9 = CMToogleButton.init()
                    button_9.frame =  CGRect(x:260 , y:595 , width: 100 , height : 55)
                    button_9.layer.cornerRadius = 27.5
                    
                    button_9.setTitle( "Tritone", for: .normal)
                    button_9.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_9.backgroundColor = UIColor.gray
                    button_9.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_9)
                }else{
                    // first button
                    let button_1 = CMToogleButton.init()
                    button_1.frame =  CGRect(x:78 , y:460 , width: 55 , height : 55 )
                    button_1.layer.cornerRadius = 27.5
                    button_1.setTitle( stringArray[ valuesArray[0] ], for: .normal)
                    button_1.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_1.backgroundColor = UIColor.gray
                    button_1.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_1)
                    //  second button
                    let button_2 = CMToogleButton.init()
                    button_2.frame =  CGRect(x:178 , y:460 , width: 55 , height : 55)
                    button_2.layer.cornerRadius = 27.5
                    
                    button_2.setTitle( stringArray[ valuesArray[1] ], for: .normal)
                    button_2.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_2.backgroundColor = UIColor.gray
                    button_2.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_2)
                    
                    //  THIRD button
                    let button_3 = CMToogleButton.init()
                    button_3.frame =  CGRect(x:278 , y:460 , width: 55 , height : 55)
                    button_3.layer.cornerRadius = 27.5
                    
                    button_3.setTitle( stringArray[ valuesArray[2] ], for: .normal)
                    button_3.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_3.backgroundColor = UIColor.gray
                    button_3.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_3)
                    
                    //  FOURTH button
                    let button_4 = CMToogleButton.init()
                    button_4.frame =  CGRect(x:78 , y:525 , width: 55 , height : 55 )
                    button_4.layer.cornerRadius = 27.5
                    
                    button_4.setTitle( stringArray[ valuesArray[3] ], for: .normal)
                    button_4.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_4.backgroundColor = UIColor.gray
                    button_4.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_4)
                    
                    // FIFTH button
                    let button_5 = CMToogleButton.init()
                    button_5.frame =  CGRect(x:178 , y:525 , width: 55 , height : 55 )
                    button_5.layer.cornerRadius = 27.5
                    
                    button_5.setTitle( stringArray[ valuesArray[4] ], for: .normal)
                    button_5.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_5.backgroundColor = UIColor.gray
                    button_5.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_5)
                    
                    // SIXTH button
                    let button_6 = CMToogleButton.init()
                    button_6.frame =  CGRect(x:278 , y:525 , width: 55 , height : 55 )
                    button_6.layer.cornerRadius = 27.5
                    
                    button_6.setTitle( stringArray[ valuesArray[5] ], for: .normal)
                    button_6.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_6.backgroundColor = UIColor.gray
                    button_6.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_6)
                    
                    // SEVENTH button
                    let button_7 = CMToogleButton.init()
                    button_7.frame =  CGRect( x:78 , y:590 , width: 55 , height : 55 )
                    button_7.layer.cornerRadius = 27.5
                    
                    button_7.setTitle( stringArray[ valuesArray[6] ], for: .normal)
                    button_7.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_7.backgroundColor = UIColor.gray
                    button_7.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_7)
                    
                    // EIGHTH button
                    let button_8 = CMToogleButton.init()
                    button_8.frame =  CGRect( x:178 , y:590 , width: 55 , height : 55)
                    button_8.layer.cornerRadius = 27.5
                    
                    button_8.setTitle( stringArray[ valuesArray[7] ], for: .normal)
                    button_8.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_8.backgroundColor = UIColor.gray
                    button_8.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_8)
                    
                    //  NINETH button
                    let button_9 = CMToogleButton.init()
                    button_9.frame =  CGRect(x:278 , y:595 , width: 55 , height : 55)
                    button_9.layer.cornerRadius = 27.5
                    
                    button_9.setTitle( stringArray[ valuesArray[0] ], for: .normal)
                    button_9.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_9.backgroundColor = UIColor.gray
                    button_9.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_9)
                }
                break;
            case 10:
                if optionsArray[ optionsArray.count - 1 ] == 12{
                    // first button
                    let button_1 = CMToogleButton.init()
                    button_1.frame =  CGRect(x:90 , y:460 , width: 55 , height : 55)
                    button_1.layer.cornerRadius = 27.5
                    button_1.setTitle( stringArray[ valuesArray[0] ], for: .normal)
                    button_1.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_1.backgroundColor = UIColor.gray
                    button_1.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_1)
                    
                    //  second button
                    let button_2 = CMToogleButton.init()
                    button_2.frame =  CGRect(x:150 , y:460 , width: 55 , height : 55 )
                    button_2.layer.cornerRadius = 27.5
                    
                    button_2.setTitle( stringArray[ valuesArray[1] ], for: .normal)
                    button_2.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_2.backgroundColor = UIColor.gray
                    button_2.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_2)
                    
                    //  THIRD button
                    let button_3 = CMToogleButton.init()
                    button_3.frame =  CGRect(x:210 , y:460 , width: 55 , height : 55)
                    button_3.layer.cornerRadius = 27.5
                    
                    button_3.setTitle( stringArray[ valuesArray[2] ], for: .normal)
                    button_3.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_3.backgroundColor = UIColor.gray
                    button_3.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_3)
                    
                    //  FOURTH button
                    let button_4 = CMToogleButton.init()
                    button_4.frame =  CGRect(x:270 , y:460 , width: 55 , height : 55 )
                    button_4.layer.cornerRadius = 27.5
                    
                    button_4.setTitle( stringArray[ valuesArray[3] ], for: .normal)
                    button_4.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_4.backgroundColor = UIColor.gray
                    button_4.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_4)
                    
                    // FIFTH button
                    let button_5 = CMToogleButton.init()
                    button_5.frame =  CGRect(x:90 , y:525 , width: 55 , height : 55 )
                    button_5.layer.cornerRadius = 27.5
                    
                    button_5.setTitle( stringArray[ valuesArray[4] ], for: .normal)
                    button_5.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_5.backgroundColor = UIColor.gray
                    button_5.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_5)
                    
                    // SIXTH button
                    let button_6 = CMToogleButton.init()
                    button_6.frame =  CGRect(x:150 , y:525 , width: 55 , height : 55)
                    button_6.layer.cornerRadius = 27.5
                    
                    button_6.setTitle( stringArray[ valuesArray[5] ], for: .normal)
                    button_6.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_6.backgroundColor = UIColor.gray
                    button_6.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_6)
                    
                    // SEVENTH button
                    let button_7 = CMToogleButton.init()
                    button_7.frame =  CGRect(x:210 , y:525 , width: 55 , height : 55 )
                    button_7.layer.cornerRadius = 27.5
                    
                    button_7.setTitle( stringArray[ valuesArray[6] ], for: .normal)
                    button_7.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_7.backgroundColor = UIColor.gray
                    button_7.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_7)
                    
                    // EIGHTH button
                    let button_8 = CMToogleButton.init()
                    button_8.frame =  CGRect(x:270 , y:525 , width: 55 , height : 55 )
                    button_8.layer.cornerRadius = 27.5
                    
                    button_8.setTitle( stringArray[ valuesArray[7] ], for: .normal)
                    button_8.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_8.backgroundColor = UIColor.gray
                    button_8.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_8)
                    
                    //  NINETH button
                    let button_9 = CMToogleButton.init()
                    button_9.frame =  CGRect(x:130 , y:590 , width: 55 , height : 55)
                    button_9.layer.cornerRadius = 27.5
                    
                    button_9.setTitle( stringArray[ valuesArray[8] ], for: .normal)
                    button_9.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_9.backgroundColor = UIColor.gray
                    button_9.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_9)
                    
                    // TENTH button
                    let button_10 = CMToogleButton.init()
                    button_10.frame =  CGRect(x: 205 , y:590 , width: 100 , height : 55 )
                    button_10.layer.cornerRadius = 27.5
                    
                    button_10.setTitle( "Tritone", for: .normal)
                    button_10.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_10.backgroundColor = UIColor.gray
                    button_10.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_10)
                }else{
                    // first button
                    let button_1 = CMToogleButton.init()
                    button_1.frame =  CGRect(x:90 , y:460 , width: 55 , height : 55)
                    button_1.layer.cornerRadius = 27.5
                    button_1.setTitle( stringArray[ valuesArray[0] ], for: .normal)
                    button_1.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_1.backgroundColor = UIColor.gray
                    button_1.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_1)
                
                    //  second button
                    let button_2 = CMToogleButton.init()
                    button_2.frame =  CGRect(x:150 , y:460 , width: 55 , height : 55 )
                    button_2.layer.cornerRadius = 27.5
                
                    button_2.setTitle( stringArray[ valuesArray[1] ], for: .normal)
                    button_2.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_2.backgroundColor = UIColor.gray
                    button_2.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_2)
                
                    //  THIRD button
                    let button_3 = CMToogleButton.init()
                    button_3.frame =  CGRect(x:210 , y:460 , width: 55 , height : 55)
                    button_3.layer.cornerRadius = 27.5
                
                    button_3.setTitle( stringArray[ valuesArray[2] ], for: .normal)
                    button_3.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_3.backgroundColor = UIColor.gray
                    button_3.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_3)
                
                    //  FOURTH button
                    let button_4 = CMToogleButton.init()
                    button_4.frame =  CGRect(x:270 , y:460 , width: 55 , height : 55 )
                    button_4.layer.cornerRadius = 27.5
                
                    button_4.setTitle( stringArray[ valuesArray[3] ], for: .normal)
                    button_4.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_4.backgroundColor = UIColor.gray
                    button_4.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_4)
                
                    // FIFTH button
                    let button_5 = CMToogleButton.init()
                    button_5.frame =  CGRect(x:90 , y:525 , width: 55 , height : 55 )
                    button_5.layer.cornerRadius = 27.5
                
                    button_5.setTitle( stringArray[ valuesArray[4] ], for: .normal)
                    button_5.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_5.backgroundColor = UIColor.gray
                    button_5.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_5)
                
                    // SIXTH button
                    let button_6 = CMToogleButton.init()
                    button_6.frame =  CGRect(x:150 , y:525 , width: 55 , height : 55)
                    button_6.layer.cornerRadius = 27.5
                
                    button_6.setTitle( stringArray[ valuesArray[5] ], for: .normal)
                    button_6.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_6.backgroundColor = UIColor.gray
                    button_6.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_6)
                
                    // SEVENTH button
                    let button_7 = CMToogleButton.init()
                    button_7.frame =  CGRect(x:210 , y:525 , width: 55 , height : 55 )
                    button_7.layer.cornerRadius = 27.5
                
                    button_7.setTitle( stringArray[ valuesArray[6] ], for: .normal)
                    button_7.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_7.backgroundColor = UIColor.gray
                    button_7.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_7)
                
                    // EIGHTH button
                    let button_8 = CMToogleButton.init()
                    button_8.frame =  CGRect(x:270 , y:525 , width: 55 , height : 55 )
                    button_8.layer.cornerRadius = 27.5
                
                    button_8.setTitle( stringArray[ valuesArray[7] ], for: .normal)
                    button_8.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_8.backgroundColor = UIColor.gray
                    button_8.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_8)
                
                    //  NINETH button
                    let button_9 = CMToogleButton.init()
                    button_9.frame =  CGRect(x:130 , y:590 , width: 55 , height : 55)
                    button_9.layer.cornerRadius = 27.5
                
                    button_9.setTitle( stringArray[ valuesArray[8] ], for: .normal)
                    button_9.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_9.backgroundColor = UIColor.gray
                    button_9.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_9)
                
                    // TENTH button
                    let button_10 = CMToogleButton.init()
                    button_10.frame =  CGRect(x: 205 , y:590 , width: 55 , height : 55 )
                    button_10.layer.cornerRadius = 27.5
                    
                    button_10.setTitle( stringArray[ valuesArray[9] ], for: .normal)
                    button_10.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_10.backgroundColor = UIColor.gray
                    button_10.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_10)
                }
                break;
            case 11:
                if optionsArray[ optionsArray.count - 1 ] == 12 {
                    // first button
                    let button_1 = CMToogleButton.init()
                    button_1.frame =  CGRect(x:90 , y:460 , width: 55 , height : 55)
                    button_1.layer.cornerRadius = 27.5
                    button_1.setTitle( stringArray[ valuesArray[0] ], for: .normal)
                    button_1.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_1.backgroundColor = UIColor.gray
                    button_1.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_1)
                    
                    //  second button
                    let button_2 = CMToogleButton.init()
                    button_2.frame =  CGRect(x:150 , y:460 , width: 55 , height : 55 )
                    button_2.layer.cornerRadius = 27.5
                    
                    button_2.setTitle( stringArray[ valuesArray[1] ], for: .normal)
                    button_2.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_2.backgroundColor = UIColor.gray
                    button_2.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_2)
                    
                    //  THIRD button
                    let button_3 = CMToogleButton.init()
                    button_3.frame =  CGRect(x:210 , y:460 , width: 55 , height : 55)
                    button_3.layer.cornerRadius = 27.5
                    
                    button_3.setTitle( stringArray[ valuesArray[2] ], for: .normal)
                    button_3.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_3.backgroundColor = UIColor.gray
                    button_3.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_3)
                    
                    //  FOURTH button
                    let button_4 = CMToogleButton.init()
                    button_4.frame =  CGRect(x:270 , y:460 , width: 55 , height : 55 )
                    button_4.layer.cornerRadius = 27.5
                    
                    button_4.setTitle( stringArray[ valuesArray[3] ], for: .normal)
                    button_4.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_4.backgroundColor = UIColor.gray
                    button_4.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_4)
                    
                    // FIFTH button
                    let button_5 = CMToogleButton.init()
                    button_5.frame =  CGRect(x:90 , y:525 , width: 55 , height : 55 )
                    button_5.layer.cornerRadius = 27.5
                    
                    button_5.setTitle( stringArray[ valuesArray[4] ], for: .normal)
                    button_5.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_5.backgroundColor = UIColor.gray
                    button_5.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_5)
                    
                    // SIXTH button
                    let button_6 = CMToogleButton.init()
                    button_6.frame =  CGRect(x:150 , y:525 , width: 55 , height : 55)
                    button_6.layer.cornerRadius = 27.5
                    
                    button_6.setTitle( stringArray[ valuesArray[5] ], for: .normal)
                    button_6.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_6.backgroundColor = UIColor.gray
                    button_6.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_6)
                    
                    // SEVENTH button
                    let button_7 = CMToogleButton.init()
                    button_7.frame =  CGRect(x:210 , y:525 , width: 55 , height : 55 )
                    button_7.layer.cornerRadius = 27.5
                    
                    button_7.setTitle( stringArray[ valuesArray[6] ], for: .normal)
                    button_7.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_7.backgroundColor = UIColor.gray
                    button_7.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_7)
                    
                    // EIGHTH button
                    let button_8 = CMToogleButton.init()
                    button_8.frame =  CGRect(x:270 , y:525 , width: 55 , height : 55 )
                    button_8.layer.cornerRadius = 27.5
                    
                    button_8.setTitle( stringArray[ valuesArray[7] ], for: .normal)
                    button_8.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_8.backgroundColor = UIColor.gray
                    button_8.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_8)
                    
                    //  NINETH button
                    let button_9 = CMToogleButton.init()
                    button_9.frame =  CGRect(x:90 , y:590 , width: 55 , height : 55)
                    button_9.layer.cornerRadius = 27.5
                    
                    button_9.setTitle( stringArray[ valuesArray[8] ], for: .normal)
                    button_9.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_9.backgroundColor = UIColor.gray
                    button_9.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_9)
                    
                    // TENTH button
                    let button_10 = CMToogleButton.init()
                    button_10.frame =  CGRect(x: 155 , y:590 , width: 55 , height : 55 )
                    button_10.layer.cornerRadius = 27.5
                    
                    button_10.setTitle( stringArray[ valuesArray[9] ], for: .normal)
                    button_10.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_10.backgroundColor = UIColor.gray
                    button_10.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_10)
                    //  ELEVENTH button
                    let button_11 = CMToogleButton.init()
                    button_11.frame =  CGRect(x:220 , y:590 , width: 100 , height : 55)
                    button_11.layer.cornerRadius = 27.5
                    
                    button_11.setTitle( "Tritone", for: .normal)
                    button_11.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_11.backgroundColor = UIColor.gray
                    button_11.setTitleColor(.blue, for: .normal)
                    self.view.addSubview( button_11 )
                }else{
                    // first button
                    let button_1 = CMToogleButton.init()
                    button_1.frame =  CGRect(x:90 , y:460 , width: 55 , height : 55)
                    button_1.layer.cornerRadius = 27.5
                    button_1.setTitle( stringArray[ valuesArray[0] ], for: .normal)
                    button_1.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_1.backgroundColor = UIColor.gray
                    button_1.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_1)
                    
                    //  second button
                    let button_2 = CMToogleButton.init()
                    button_2.frame =  CGRect(x:150 , y:460 , width: 55 , height : 55 )
                    button_2.layer.cornerRadius = 27.5
                    
                    button_2.setTitle( stringArray[ valuesArray[1] ], for: .normal)
                    button_2.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_2.backgroundColor = UIColor.gray
                    button_2.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_2)
                    
                    //  THIRD button
                    let button_3 = CMToogleButton.init()
                    button_3.frame =  CGRect(x:210 , y:460 , width: 55 , height : 55)
                    button_3.layer.cornerRadius = 27.5
                    
                    button_3.setTitle( stringArray[ valuesArray[2] ], for: .normal)
                    button_3.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_3.backgroundColor = UIColor.gray
                    button_3.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_3)
                    
                    //  FOURTH button
                    let button_4 = CMToogleButton.init()
                    button_4.frame =  CGRect(x:270 , y:460 , width: 55 , height : 55 )
                    button_4.layer.cornerRadius = 27.5
                    
                    button_4.setTitle( stringArray[ valuesArray[3] ], for: .normal)
                    button_4.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_4.backgroundColor = UIColor.gray
                    button_4.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_4)
                    
                    // FIFTH button
                    let button_5 = CMToogleButton.init()
                    button_5.frame =  CGRect(x:90 , y:525 , width: 55 , height : 55 )
                    button_5.layer.cornerRadius = 27.5
                    
                    button_5.setTitle( stringArray[ valuesArray[4] ], for: .normal)
                    button_5.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_5.backgroundColor = UIColor.gray
                    button_5.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_5)
                    
                    // SIXTH button
                    let button_6 = CMToogleButton.init()
                    button_6.frame =  CGRect(x:150 , y:525 , width: 55 , height : 55)
                    button_6.layer.cornerRadius = 27.5
                    
                    button_6.setTitle( stringArray[ valuesArray[5] ], for: .normal)
                    button_6.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_6.backgroundColor = UIColor.gray
                    button_6.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_6)
                    
                    // SEVENTH button
                    let button_7 = CMToogleButton.init()
                    button_7.frame =  CGRect(x:210 , y:525 , width: 55 , height : 55 )
                    button_7.layer.cornerRadius = 27.5
                    
                    button_7.setTitle( stringArray[ valuesArray[6] ], for: .normal)
                    button_7.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_7.backgroundColor = UIColor.gray
                    button_7.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_7)
                    
                    // EIGHTH button
                    let button_8 = CMToogleButton.init()
                    button_8.frame =  CGRect(x:270 , y:525 , width: 55 , height : 55 )
                    button_8.layer.cornerRadius = 27.5
                    
                    button_8.setTitle( stringArray[ valuesArray[7] ], for: .normal)
                    button_8.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_8.backgroundColor = UIColor.gray
                    button_8.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_8)
                    
                    //  NINETH button
                    let button_9 = CMToogleButton.init()
                    button_9.frame =  CGRect(x:110 , y:590 , width: 55 , height : 55)
                    button_9.layer.cornerRadius = 27.5
                    
                    button_9.setTitle( stringArray[ valuesArray[8] ], for: .normal)
                    button_9.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_9.backgroundColor = UIColor.gray
                    button_9.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_9)
                    
                    // TENTH button
                    let button_10 = CMToogleButton.init()
                    button_10.frame =  CGRect(x: 175 , y:590 , width: 55 , height : 55 )
                    button_10.layer.cornerRadius = 27.5
                    
                    button_10.setTitle( stringArray[ valuesArray[9] ], for: .normal)
                    button_10.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_10.backgroundColor = UIColor.gray
                    button_10.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_10)
                    //  ELEVENTH button
                    let button_11 = CMToogleButton.init()
                    button_11.frame =  CGRect(x:240 , y:590 , width: 55 , height : 55)
                    button_11.layer.cornerRadius = 27.5
                    
                    button_11.setTitle( stringArray[ valuesArray[10] ], for: .normal)
                    button_11.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_11.backgroundColor = UIColor.gray
                    button_11.setTitleColor(.blue, for: .normal)
                    self.view.addSubview( button_11 )
                }
                break;
            case 12:
                    // first button
                    let button_1 = CMToogleButton.init()
                    button_1.frame =  CGRect(x:90 , y:460 , width: 55 , height : 55)
                    button_1.layer.cornerRadius = 27.5
                    button_1.setTitle( "m2", for: .normal)
                    button_1.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_1.backgroundColor = UIColor.gray
                    button_1.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_1)
                    
                    //  second button
                    let button_2 = CMToogleButton.init()
                    button_2.frame =  CGRect(x:150 , y:460 , width: 55 , height : 55 )
                    button_2.layer.cornerRadius = 27.5
                    
                    button_2.setTitle( "m3", for: .normal)
                    button_2.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_2.backgroundColor = UIColor.gray
                    button_2.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_2)
                    
                    //  THIRD button
                    let button_3 = CMToogleButton.init()
                    button_3.frame =  CGRect(x:210 , y:460 , width: 55 , height : 55)
                    button_3.layer.cornerRadius = 27.5
                    
                    button_3.setTitle( "m6", for: .normal)
                    button_3.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_3.backgroundColor = UIColor.gray
                    button_3.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_3)
                    
                    //  FOURTH button
                    let button_4 = CMToogleButton.init()
                    button_4.frame =  CGRect(x:270 , y:460 , width: 55 , height : 55 )
                    button_4.layer.cornerRadius = 27.5
                    
                    button_4.setTitle( "m7", for: .normal)
                    button_4.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_4.backgroundColor = UIColor.gray
                    button_4.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_4)
                    
                    // FIFTH button
                    let button_5 = CMToogleButton.init()
                    button_5.frame =  CGRect(x:90 , y:525 , width: 55 , height : 55 )
                    button_5.layer.cornerRadius = 27.5
                    
                    button_5.setTitle( "M2", for: .normal)
                    button_5.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_5.backgroundColor = UIColor.gray
                    button_5.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_5)
                    
                    // SIXTH button
                    let button_6 = CMToogleButton.init()
                    button_6.frame =  CGRect(x:150 , y:525 , width: 55 , height : 55)
                    button_6.layer.cornerRadius = 27.5
                    
                    button_6.setTitle( "3M", for: .normal)
                    button_6.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_6.backgroundColor = UIColor.gray
                    button_6.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_6)
                    
                    // SEVENTH button
                    let button_7 = CMToogleButton.init()
                    button_7.frame =  CGRect(x:210 , y:525 , width: 55 , height : 55 )
                    button_7.layer.cornerRadius = 27.5
                    
                    button_7.setTitle( "M6", for: .normal)
                    button_7.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_7.backgroundColor = UIColor.gray
                    button_7.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_7)
                    
                    // EIGHTH button
                    let button_8 = CMToogleButton.init()
                    button_8.frame =  CGRect(x:270 , y:525 , width: 55 , height : 55 )
                    button_8.layer.cornerRadius = 27.5
                    
                    button_8.setTitle( "M7", for: .normal)
                    button_8.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_8.backgroundColor = UIColor.gray
                    button_8.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_8)
                    
                    //  NINETH button
                    let button_9 = CMToogleButton.init()
                    button_9.frame =  CGRect(x:75 , y:590 , width: 55 , height : 55)
                    button_9.layer.cornerRadius = 27.5
                    
                    button_9.setTitle( "P4", for: .normal)
                    button_9.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_9.backgroundColor = UIColor.gray
                    button_9.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_9)
                    
                    // TENTH button
                    let button_10 = CMToogleButton.init()
                    button_10.frame =  CGRect(x: 135 , y:590 , width: 55 , height : 55 )
                    button_10.layer.cornerRadius = 27.5
                    
                    button_10.setTitle( "P5", for: .normal)
                    button_10.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_10.backgroundColor = UIColor.gray
                    button_10.setTitleColor(.blue, for: .normal)
                    self.view.addSubview(button_10)
                    //  ELEVENTH button
                    let button_11 = CMToogleButton.init()
                    button_11.frame =  CGRect(x:195 , y:590 , width: 55 , height : 55)
                    button_11.layer.cornerRadius = 27.5
                    
                    button_11.setTitle( "P8", for: .normal)
                    button_11.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_11.backgroundColor = UIColor.gray
                    button_11.setTitleColor(.blue, for: .normal)
                    self.view.addSubview( button_11 )
                    
                    //  TWELVETH BUTTON
                    let button_12 = CMToogleButton.init()
                    button_12.frame =  CGRect(x:255 , y:590 , width: 100 , height : 55)
                    button_12.layer.cornerRadius = 27.5
                    
                    button_12.setTitle( "Tritone", for: .normal)
                    button_12.addTarget( self, action: #selector( buttonClicked(_ :) ), for: .touchUpInside )
                    button_12.backgroundColor = UIColor.gray
                    button_12.setTitleColor(.blue, for: .normal)
                    self.view.addSubview( button_12 )
                
                break;
            default:
                print(6)
        }
        
        
        print("this is the upper limit of the array AT THE END:  \(finalArray.count)")

    }
    
    
    
    @objc func buttonClicked(_ sender: UIButton){
        
        var text = ""
        switch randomValue {
            case 0...4: text = "m2"; break;
            case 5...9: text = "m3"; break;
            case 10...14: text = "m6"; break;
            case 15...19: text = "m7"; break;
            case 20...24: text = "M2"; break;
            case 25...29: text = "M3"; break;
            case 30...34: text = "M6"; break;
            case 35...39: text = "M7"; break;
            case 40...44: text = "P4"; break;
            case 45...49: text = "P5"; break;
            case 50...54: text = "P8"; break;
            case 55...59: text = "Tritone"; break;
            
            default:
                print("default in function")
            
        }
        
       //let correctpop = correctPopup()
        //present( correctpop, animated: true , completion: nil)
        
        
        //let myObject = UIStoryboard(name: "Main", bundle: Bundle.main)
        
       /* guard let correctPopUp = myObject.instantiateViewController(withIdentifier: "correctPopUp") as? correctPopUp else {
            print("could not find")
            return
        }
        
        navigationController?.pushViewController(correctPopUp, animated: true)
        
        */
        
        /* let myObject = UIStoryboard(name: "Main", bundle: Bundle.main)
         guard let correct = myObject.instantiateViewController(withIdentifier: "correctPopUp") as? correctPopUp else {
         print("could not find")
         return
         }
         
         navigationController?.pushViewController(correct, animated: true)
         */
        if( sender.titleLabel!.text! == text ){
            print("CORRECT!")
            
            
            //self.performSegue(withIdentifier: "CorrectSegue", sender: self)
           
        }else{
            print("WRONG")
            //self.performSegue(withIdentifier: "WrongSegue", sender: self)
        }
        
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

   /* @IBAction func correctButton(_ sender: Any) {
        let storyBoard  :  UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let nextViewController = storyBoard.instantiateViewController(withIdentifier: "nextView") as NextViewController
        
        self.presentViewController( nextViewController, animated: true , completion: nil)
    }
    */
}
