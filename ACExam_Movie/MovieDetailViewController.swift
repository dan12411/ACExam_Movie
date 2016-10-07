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
    
    var detail = "由陳玉珊初次執導，宋芸樺、王大陸、李玉璽、簡廷芮所領銜主演，2015年度一部以1990年代為背景，校園愛情、青春懷舊為題材的愛情輕喜劇電影。有別於2011年度紅極一時的《那些年，我們一起追的女孩》，本片劇情走向是以女性觀點出發作為其主要視角，非真人真事。2016年7月19日，陳玉珊宣布將此戲翻拍成連續劇，由緯來戲劇台、三立都會台聯合製播，每集90分鐘，拍攝30集。"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let detailImage2 = self.detailImage2 {
            self.detailImage.image = detailImage2
        }
        
        detailLabel.text = detail
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

