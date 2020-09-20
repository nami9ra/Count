//
//  ViewController.swift
//  Count
//
//  Created by 渡辺奈実 on 2020/09/14.
//  Copyright © 2020 Watanabe nami. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sum(){
        number += 1
        font()
    }
    
    @IBAction func sub(){
           number -= 1
           font()
       }
    
    @IBAction func mul(){
           number *= 2
           font()
       }
    
    @IBAction func div(){
           number /= 2
           font()
       }
    
    @IBAction func clear(){
        number = 0
        font()
    }
    
    func font(){
        if number >= 10{
            label.textColor = UIColor.red
        }else if number <= -10{
            label.textColor = UIColor.blue
        }else{
            label.textColor = UIColor.black
        }
        label.text = String(number)
    }
}

