//
//  MasterViewController.swift
//  AccessibilityTests
//
//  Created by Evan Anger on 5/5/20.
//  Copyright © 2020 Mighty Strong. All rights reserved.
//

import UIKit

struct Example {
    let text: String
}

class MasterViewController: UITableViewController {
    var objects: [Example] = [Example(text: "Attributed Text Test")]


    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return objects.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let navvy = UINavigationController(rootViewController: AttributedTextViewController())
            self.present(navvy, animated: true, completion: nil)
        default:
            return
        }
    }
    

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let object = objects[indexPath.row].text
        cell.textLabel!.text = object.description
        return cell
    }

    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
}


