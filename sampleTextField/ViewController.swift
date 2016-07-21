//
//  ViewController.swift
//  sampleTextField
//
//  Created by Eriko Ichinohe on 2016/07/21.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTextField.textAlignment = NSTextAlignment.Center
    }

   
    @IBAction func tapReturnKey
        (sender: UITextField) {
        
        //testと言う字が含まれていたら「testです」とラベルに表示、それ以外は入力された字をそのまま表示しましょう
        
        print("text=\(sender.text)")
        
        let str = sender.text

        if let r = str!.rangeOfString("test") {
            print("testです")
        } else {
            print(str)
        }

        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

