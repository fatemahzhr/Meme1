//
//  ViewController2.swift
//  MemeMe_version2.0
//
//  Created by Fatima Abdulraheem on 08/12/2018.
//

import UIKit

class ViewController2: UIViewController {
    var selectedMeme: MStruct!
    
    @IBOutlet weak var imgView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imgView.image = selectedMeme.memedImage
        imgView.contentMode = .scaleAspectFit
    }//end of viewDidLoad()
    
    
    
}//end of Class
    

