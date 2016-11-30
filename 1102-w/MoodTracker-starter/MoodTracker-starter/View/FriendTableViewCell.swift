//
//  FriendTableViewCell.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FriendTableViewCell: UITableViewCell {
    
    var currentFriend: Friend?
    var tableViewController: FriendsTableViewController?

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var moodTextLabel: UILabel!
    @IBOutlet weak var moodButton: UIButton!
    
    @IBAction func moodButonPressed(_ sender: Any) {
        tableViewController!.shitGotDone(currentFriend: currentFriend!)
        
    }
    


}
