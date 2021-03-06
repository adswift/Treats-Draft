//
//  AchievementsTableViewController.swift
//  Treats Draft
//
//  Created by Edna Tay  on 20/2/20.
//  Copyright © 2020 Adeena Ansari. All rights reserved.
//

import UIKit

class AchievementsTableViewController: UITableViewController {
    
    var achievements = [
        Achievement(name: "Spend 5 hours in parks in total.", status: 5, maxStatus: 5),
        Achievement(name: "Spend 10 hours in parks in total.", status: 5, maxStatus: 10),
        Achievement(name: "Spend 15 hours in parks in total.", status: 5, maxStatus: 15),
        Achievement(name: "Spend 20 hours in parks in total.", status: 5, maxStatus: 20),
        Achievement(name: "Complete 5 missions in total.", status: 5, maxStatus: 5),
        Achievement(name: "Complete 10 missions in total.", status: 5, maxStatus: 10),
        Achievement(name: "Complete 15 missions in total.", status: 5, maxStatus: 15),
        Achievement(name: "Complete 20 missions in total.", status: 5, maxStatus: 20),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return achievements.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "achievementcell", for: indexPath)
        if let cell = cell as? AchievementsTableViewCell {
        let achievement = achievements[indexPath.row]
        cell.statusSlider.maximumValue = Float(achievement.maxStatus)
        cell.statusSlider.value = Float(achievement.status)
        cell.detailLabel.textAlignment = .center
        cell.titleLabel.text = achievement.name
            
        if achievement.status == achievement.maxStatus {
            cell.detailLabel?.text = "Completed!"
            cell.medalIcon.image = UIImage(named: "goldmedal")
            let missionMove = achievements.remove(at: indexPath.row)
            achievements.append(missionMove)
        } else {
            cell.detailLabel?.text = "Not completed yet..."
            }
       
    }
        return cell
    }
        override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


}
