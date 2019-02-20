//  MemeTableViewController.swift
//  MemeMe_version2.0
//
//  Created by Fatima Abdulraheem on 08/12/2018.
//

//Source Code: https://github.com/deborahepadilla/MemeMe-2.0/blob/master/MeMe/TableVC.swift

import Foundation
import UIKit

class MemeTableViewController: UITableViewController {
    //Add a variable as AppDelegate:
    var meme: [MStruct] {
        return (UIApplication.shared.delegate as! AppDelegate).meme
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData() //This function to reload the data when the table view will appear
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meme.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeTCell", for: indexPath) as! TableViewCell
        let meme = self.meme[indexPath.row]
        cell.tableImageView.image = meme.memedImage
        cell.lableTableView.text = meme.topText
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
} // end of Class MemeTableViewController
