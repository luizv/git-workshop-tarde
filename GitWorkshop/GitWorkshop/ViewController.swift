//
//  ViewController.swift
//  GitWorkshop
//
//  Created by Luiz Veloso on 20/08/19.
//  Copyright © 2019 Luiz Veloso. All rights reserved.
//

import UIKit
import AVFoundation
import AudioToolbox

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()   
        // Do any additional setup after loading the view.
    }
    
    func printHello(){
        print("Eae cambaaaaaaadaaaa!")
        
    }
    
    func playSong(name: String, type: String){
        let path = Bundle.main.path(forResource: name, ofType: type)!
        let soundURl = URL(fileURLWithPath: path)
        player = try! AVAudioPlayer(contentsOf: soundURl)
        player.play()
    }
    
    

    @IBAction func play(_ sender: Any) {
        self.playSong(name: "WinSound", type: "wav")
        AudioServicesPlayAlertSound(kSystemSoundID_Vibrate)
    }
    
}

