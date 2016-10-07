//
//  FirstViewController.swift
//  ACExam_Movie
//
//  Created by 洪德晟 on 2016/10/7.
//  Copyright © 2016年 洪德晟. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var detailLabel: UILabel!
    
    var detailImage2: UIImage?
    var detailContent: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if let detailImage2 = self.detailImage2 {
            self.detailImage.image = detailImage2
        }
        if let detailContent = self.detailContent {
            self.detailLabel.text = detailContent
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

