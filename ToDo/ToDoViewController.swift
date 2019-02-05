//
//  ViewController.swift
//  ToDo
//
//  Created by Daniel Abbott on 2/5/19.
//  Copyright © 2019 A.BOT.Apps. All rights reserved.
//

import UIKit

class ToDoViewController: UITableViewController {
    
    let itemArray = ["one", "two", "three"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK - Tableview Datasource methods
    
    //  Creates the amount of cells needed for the data array
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    // Puts the information from the array into the cells
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
        
    }
    
    //MARK - Tableview Delegate methods
    
    // What happens when cell selected
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        
        // Make cell only flash and then go back to normal colour when selected
        tableView.deselectRow(at: indexPath, animated: true)
        
        
        
        
    }
    
}

