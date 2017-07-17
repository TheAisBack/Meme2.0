//  MemeTableViewController.swift
//  MemeMe2.0
//
//  Created by Alan Joseph Hekle on 2017-07-14.
//  Copyright © 2017 Alan Joseph Hekle. All rights reserved.

import UIKit

class MemeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {
    
    var memes: [Meme]!
    
    @IBOutlet weak var addButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        memes = appDelegate.memes
        self.navigationItem.leftBarButtonItem = self.editButtonItem;
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.memes.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeCell")!
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailController = self.storyboard!.instantiateViewController(withIdentifier: "MemeDetailViewController") as! MemeDetailViewController
        self.navigationController!.pushViewController(detailController, animated: true)
    }
}
