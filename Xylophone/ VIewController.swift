//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    
    
    //this is an optional audioplayer
    var player : AVAudioPlayer?
    
     var selectSoundFileName : String = ""
    
    let AudioArray = ["note1", "note2", "note3", "note4", "note5", "note6","note7"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed2(_ sender: UIButton){
        
        
       
         selectSoundFileName  = AudioArray[sender.tag - 1]
        
         print(selectSoundFileName)
        
        playSound()
        
    }
    
    func playSound(){
        
        
        //location to sound located
        
        let url = Bundle.main.url(forResource: selectSoundFileName, withExtension: "wav")!
        
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        } catch let error as NSError {
            print(error.description)
        }
        

        
        
    }
    
  
    

}

