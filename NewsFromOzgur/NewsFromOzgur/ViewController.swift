//
//  ViewController.swift
//  NewsFromOzgur
//
//  Created by Özgür Salih Dülger on 10.01.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var newsTitles = [String]()
    var newsImages = [UIImage]()
    var newsDetails = [String]()
    
    var chosenNewsTitle = ""
    var chosenNewsImages = UIImage()
    var chosenNewsDetail = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        newsTitles.append("SPORT")
        newsTitles.append("Euro to TL")
        newsTitles.append("Migros in the world")
        newsTitles.append("Number of unemployed")
        newsTitles.append("Philippines")
        newsTitles.append("France")
        newsTitles.append("Ozone hole")
        newsTitles.append("California")
        newsTitles.append("Suez")
        newsTitles.append("Smartest dog")
        
        newsImages.append(UIImage(named: "derbi")!)
        newsImages.append(UIImage(named: "euro")!)
        newsImages.append(UIImage(named: "migros")!)
        newsImages.append(UIImage(named: "unemployed")!)
        newsImages.append(UIImage(named: "philippines")!)
        newsImages.append(UIImage(named: "paris")!)
        newsImages.append(UIImage(named: "ozone")!)
        newsImages.append(UIImage(named: "california")!)
        newsImages.append(UIImage(named: "suez")!)
        newsImages.append(UIImage(named: "dog")!)
        
        newsDetails.append("Galatasaray won")
        newsDetails.append("1 Euro = 20.19 TL")
        newsDetails.append("Largest supermarket chain")
        newsDetails.append("Over 200 million")
        newsDetails.append("Landslide in the Philippines")
        newsDetails.append("Knife attack in paris")
        newsDetails.append("Ozone hole closing")
        newsDetails.append("14 people died")
        newsDetails.append("The ship was rescued")
        newsDetails.append("Belgian wolf")
        
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsTitles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = newsTitles[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenNewsTitle = newsTitles[indexPath.row]
        chosenNewsImages = newsImages[indexPath.row]
        chosenNewsDetail = newsDetails[indexPath.row]
        performSegue(withIdentifier: "toNewsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNewsVC" {
            let destinationVC = segue.destination as! NewsVC
            destinationVC.selectedNewsTitlesName = chosenNewsTitle
            destinationVC.selectedNewsImage = chosenNewsImages
            destinationVC.selectedNewsDetails = chosenNewsDetail
            
        }
    }


}

