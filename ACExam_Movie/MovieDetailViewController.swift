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
    
    var detailImage2: UIImage?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let detailImage2 = self.detailImage {
            self.detailImage = detailImage2
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

