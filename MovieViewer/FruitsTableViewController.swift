//
//  FruitsTableViewController.swift
//  MovieViewer
//
//  Created by Andy Jiang on 10/17/16.
//  Copyright © 2016 andyjiang. All rights reserved.
//

import UIKit

class FruitsTableViewController: UITableViewController {

    var fruits = ["Apple", "Apricot", "Banana", "Blueberry", "Cantaloupe", "Cherry",
                  "Clementine", "Coconut", "Cranberry", "Fig", "Grape", "Grapefruit",
                  "Kiwi fruit", "Lemon", "Lime", "Lychee", "Mandarine", "Mango",
                  "Melon", "Nectarine", "Olive", "Orange", "Papaya", "Peach",
                  "Pear", "Pineapple", "Raspberry", "Strawberry"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        cell.textLabel?.text = fruits[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section \(section)"
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
