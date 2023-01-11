//
//  NewsVC.swift
//  NewsFromOzgur
//
//  Created by Özgür Salih Dülger on 10.01.2023.
//

import UIKit

class NewsVC: UIViewController {

    @IBOutlet weak var newsTitlesLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var newsDetailsLabel: UILabel!
    
    var selectedNewsTitlesName = ""
    var selectedNewsImage = UIImage()
    var selectedNewsDetails = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newsTitlesLabel.text = selectedNewsTitlesName
        imageView.image = selectedNewsImage
        newsDetailsLabel.text = selectedNewsDetails

       
    }
    

    

}
