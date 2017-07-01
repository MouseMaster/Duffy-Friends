//
//  SecondViewController.swift
//  Duffy Friend
//
//  Created by MouseMaster on 2017/6/30.
//  Copyright © 2017年 Toby Chen. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var alphabet:String!

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var disneyImage: UIImageView!
    @IBOutlet weak var introLabel: UILabel!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let url = Bundle.main.url(forResource: alphabet, withExtension: "txt")
        let content = try? String(contentsOf: url!)
        let array = content!.components(separatedBy: "\n")
        let line = array[0]
        let txtArray = line.components(separatedBy: "\t")
        
        navigationItem.title = alphabet //讓每個出現的畫面可以出現相應的title
        nameLabel.text = txtArray[0]
        introLabel.text = txtArray[1]
        
        if alphabet == "duffy"{
        disneyImage.image = #imageLiteral(resourceName: "duffy1")
        }else if alphabet == "shellie"{
        disneyImage.image = #imageLiteral(resourceName: "shelliemay1")
        }else if alphabet == "gelatoni"{
        disneyImage.image = #imageLiteral(resourceName: "gelatoni1")
        }else if alphabet == "stella"{
        disneyImage.image = #imageLiteral(resourceName: "stellalou1")
        }
        
        disneyImage.layer.cornerRadius = (disneyImage.frame.width) / 2
        disneyImage.clipsToBounds = true
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
