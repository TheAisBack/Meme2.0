//
//  MemeTableViewController.swift
//  MemeMe2.0
//
//  Created by Alan Joseph Hekle on 2017-07-14.
//  Copyright © 2017 Alan Joseph Hekle. All rights reserved.
//

import UIKit

class MemeTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {

    var memes: [Meme]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        memes = appDelegate.memes
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return self.allVillains.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //let cell = tableView.dequeueReusableCell(withIdentifier: "VillainCell")!
        //let villain = self.allVillains[(indexPath as NSIndexPath).row]
        
        // Set the name and image
        //cell.textLabel?.text = villain.name
        //cell.imageView?.image = UIImage(named: villain.imageName)
        
        // If the cell has a detail label, we will put the evil scheme in.
        //if let detailTextLabel = cell.detailTextLabel {
        //    detailTextLabel.text = "Scheme: \(villain.evilScheme)"
    }
        
        //return cell
}
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //let detailController = self.storyboard!.instantiateViewController(withIdentifier: "VillainDetailViewController") as! VillainDetailViewController
        //detailController.villain = self.allVillains[(indexPath as NSIndexPath).row]
        //self.navigationController!.pushViewController(detailController, animated: true)
}
