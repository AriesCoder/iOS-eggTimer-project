//
//  ViewController.swift
//  eggTimer
//
//  Created by Aries Lam on 3/18/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timerLabel: UILabel!
    
    let softMinute = 5
    let mediumMinute = 420
    let hardMinute = 720
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    var timer = Timer()
    @IBAction func softEggBtn(_ sender: UIButton) {
        print(sender.currentTitle!)
        let hardness = sender.currentTitle!
        switch hardness{
        case "Soft":
            eggTimer(time: softMinute)
        case "Medium":
            eggTimer(time: mediumMinute)
        case "Hard":
            eggTimer(time: hardMinute)
        default:
            print("Error")
        }
        func eggTimer(time: Int){
            timer.invalidate()
            var num = time
            timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { [self] (Timer) in
                if num > 0 {
                    if num > 1{
                        timerLabel.text = "\(num) seconds."
                    }
                    else if num == 1{
                        timerLabel.text = "\(num) second."
                    }
                    num -= 1
                } else {
                    timerLabel.text = "Done!"
                }
            }
        }
    }
}

