//
//  SecondViewController.swift
//  ACExam_Movie
//
//  Created by 洪德晟 on 2016/10/7.
//  Copyright © 2016年 洪德晟. All rights reserved.
//

import UIKit

class SignViewController: UIViewController {
    
    @IBOutlet weak var myTextField: UITextField!
    
    @IBOutlet weak var contentView: UITextView!
    
    @IBAction func goButton(_ sender: UIButton) {
        
        if let inputText = myTextField.text, inputText != "" {
            let firstSign = myTextField.text
            contentView.text = firstSign
//            myTextField.resignFirstResponder()
            myTextField.text = ""
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

