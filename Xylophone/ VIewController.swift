//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    var player : AVAudioPlayer!
    let soundArray = ["note1","note2","note3","note4","note5","note6","note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        playSound(file: soundArray[sender.tag - 1])
    }
    
    func playSound(file : String) {
        let url = Bundle.main.url(forResource: file, withExtension: "wav")
        
        do {
            player = try AVAudioPlayer(contentsOf: url!)
        } catch let error as Error {
            print(error.localizedDescription)
        }
        
        player.play()
    }
    
  

}

