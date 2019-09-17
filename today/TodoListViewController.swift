//
//  ViewController.swift
//  today
//
//  Created by vishal nikhoriya on 18/09/19.
//  Copyright © 2019 vishal nikhoriya. All rights reserved.
//

import UIKit

class TodoListViewController:UITableViewController {
    let itemArray  = ["harsh","kirtish","vishal","raju","shivanshu"]
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    //Mark - tableview Datasource Methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDOItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }
    // MARK - TableView Delegate Methods
   override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       // print(itemArray[indexPath.row])
    
    if  tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark
    {
         tableView.cellForRow(at: indexPath)?.accessoryType = .none
    }else {
         tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
    }
    tableView.deselectRow(at: indexPath, animated: true)
    }

}

