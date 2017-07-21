//  MemeTableViewController.swift
//  MemeMe2.0
//
//  Created by Alan Joseph Hekle on 2017-07-20.
//  Copyright © 2017 Alan Joseph Hekle. All rights reserved.

import UIKit

class MemeTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    var memes: [Meme]!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        memes = appDelegate.memes
        //self.navigationItem.leftBarButtonItem = self.editButtonItem;
    }
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        memes = appDelegate.memes
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.memes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeTableViewCell", for: indexPath)  as! MemeTableViewCell
        let meme = self.memes[(indexPath as NSIndexPath).row]
        cell.topText?.text = meme.topText
        cell.bottomText?.text = meme.bottomText
        cell.memeImage?.image = meme.memedImage
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "MemeDetailViewController") as! MemeDetailViewController
        detailController.memes = memes[(indexPath as NSIndexPath).row]
        self.navigationController!.pushViewController(detailController, animated: true)
    }
}
