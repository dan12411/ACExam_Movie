//
//  MovieTableViewController.swift
//  ACExam_Movie
//
//  Created by 洪德晟 on 2016/10/7.
//  Copyright © 2016年 洪德晟. All rights reserved.
//

import UIKit

class MovieTableViewController: UITableViewController {
    
    var names = ["我的少女時代", "樓下的房客"]
    
    var dates = ["上映日期：2015-08-13","上映日期：2016-08-13"]
    
    var images = ["pic", "pic2"]
    
    var detail = ["由陳玉珊初次執導，宋芸樺、王大陸、李玉璽、簡廷芮所領銜主演，2015年度一部以1990年代為背景，校園愛情、青春懷舊為題材的愛情輕喜劇電影。有別於2011年度紅極一時的《那些年，我們一起追的女孩》，本片劇情走向是以女性觀點出發作為其主要視角，非真人真事。2016年7月19日，陳玉珊宣布將此戲翻拍成連續劇，由緯來戲劇台、三立都會台聯合製播，每集90分鐘，拍攝30集。2016年7月19日，陳玉珊宣布將此戲翻拍成連續劇，由緯來戲劇台、三立都會台聯合製播，每集90分鐘，拍攝30集。2016年7月19日，陳玉珊宣布將此戲翻拍成連續劇，由緯來戲劇台、三立都會台聯合製播，每集90分鐘，拍攝30集。", "本片改編自臺灣知名作家九把刀小說《樓下的房客》；由崔震東擔任導演、製片，柴智屏監製、 九把刀編劇，崔震東、柴智屏、江志強為出品人。製片公司為安邁進國際影業股份有限公司。本劇2015年9月28日開鏡，2015年10月10日開拍，於2015年11月殺青，2016年8月12日於香港、台灣同步上映；2016年8月25日於馬來西亞上映；2016年10月13日於新加坡上映。本劇2015年9月28日開鏡，2015年10月10日開拍，於2015年11月殺青，2016年8月12日於香港、台灣同步上映；2016年8月25日於馬來西亞上映；2016年10月13日於新加坡上映。"]

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    
    }

    // MARK: - TableViewDataSource

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return names.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MovieTableViewCell

        // Configure the cell...
        
        cell.movieImage.image = UIImage(named: images[indexPath.row])
        cell.movieNameLabel.text = names[indexPath.row]
        cell.movieDateLabel.text = dates[indexPath.row]
        

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "showDetail" {
            
            let dvc = segue.destination as! MovieDetailViewController
            
            let userSelectedIndexPath = self.tableView.indexPathForSelectedRow!
            
            let showImage = UIImage(named: images[userSelectedIndexPath.row])
            
            let showTitle = names[userSelectedIndexPath.row]
            
            let showDetail = detail[userSelectedIndexPath.row]
            
            dvc.detailImage2 = showImage
            
            dvc.title = showTitle
            
            dvc.detailContent = showDetail
        }
    }
}
