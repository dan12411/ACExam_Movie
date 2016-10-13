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
    
    var sign = [String]()
    
    @IBAction func goButton(_ sender: UIButton) {
        
        if let inputText = myTextField.text, inputText != "" {

            sign.append(inputText)
            
            switch sign.count {
            case 1 :
                contentView.text = sign[0]
            case 2 :
                contentView.text = "\(sign[0])\n\(sign[1])"
            case 3 :
                contentView.text = "\(sign[0])\n\(sign[1])\n\(sign[2])"
            default :
                let myAlert = UIAlertController(title: "簽名人次已達三人", message: "下次請早", preferredStyle: .alert)
                let okAtion = UIAlertAction(title: "OK", style: .default, handler: nil)
                myAlert.addAction(okAtion)
                present(myAlert, animated: true, completion: nil)
            }
            
            myTextField.resignFirstResponder()
            myTextField.text = ""
        }
    }


    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentView.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }


}

