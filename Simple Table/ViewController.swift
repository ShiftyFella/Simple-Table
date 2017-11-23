//
//  ViewController.swift
//  Simple Table
//
//  Created by Viktor Bilyk on 2017-11-22.
//  Copyright © 2017 Shifty Land LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    private let dwarves = [ "Sleepy", "Sneezy", "Bashful", "Happy",
                            "Doc", "Grumpy", "Dopey", "Thorin",
                            "Dorin", "Nori", "Ori", "Balin",
                            "Dwalin", "Fili", "Kili", "Oin",
                            "Gloin", "Bifur", "Bofur", "Bombur"
    ]
    
    let simpleTavleIdentifier = "SimpleTableIdentifier"
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dwarves.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: simpleTavleIdentifier)
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: simpleTavleIdentifier)
        }
        
        cell?.textLabel?.text = dwarves[indexPath.row]
        return cell!
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

