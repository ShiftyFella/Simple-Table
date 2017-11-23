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
    
    //1st row not selectable
    func tableView(_ tableView: UITableView, willSelectRowAt indexPath: IndexPath) -> IndexPath? {
        return indexPath.row == 0 ? nil: indexPath
    }
    
    //indent rows
    func tableView(_ tableView: UITableView, indentationLevelForRowAt indexPath: IndexPath) -> Int {
        return indexPath.row % 4;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: simpleTavleIdentifier)
        if (cell == nil) {
            cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: simpleTavleIdentifier)
            
        }
        let image = UIImage(named: "star2")
        cell?.imageView?.image = image
        let highlightedImage = UIImage(named: "star")
        cell?.imageView?.highlightedImage = highlightedImage
        
        if indexPath.row < 7 {
            cell?.detailTextLabel?.text = "Mr Disney"
        } else {
            cell?.detailTextLabel?.text = "Mr Tolkien"
        }
        
        cell?.textLabel?.text = dwarves[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let rowValue = dwarves[indexPath.row]
        let message = "You selected \(rowValue)"
        
        let controller = UIAlertController(title: "Row Selected", message: message, preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Yes I did", style: .default, handler: nil)
        
        controller.addAction(action)
        present(controller,animated: true, completion: nil)
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

