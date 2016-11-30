//
//  FriendsTableViewController.swift
//  MoodTracker-starter
//
//  Created by Nikolas Burk on 02/11/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class FriendsTableViewController: UITableViewController {

var friendArray = [
    Friend(name: "Harry", mood: .happy),
    Friend(name: "Ron", mood: .ok),
    Friend(name: "Dumbledoor", mood: .mad)
]
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return friendArray.count

  }
    
    func shitGotDone(currentFriend: Friend) {
        switch currentFriend.mood {
        case .happy:
            currentFriend.mood = .ok
        case .ok:
            currentFriend.mood = .mad
        case .mad:
            currentFriend.mood = .happy
       
        }
     self.tableView.reloadData()
    }
    
    func addFriend(newFriend : Friend) {
        friendArray.append(newFriend)
        tableView.reloadData()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "destinationID" {
        let newFriendViewController = segue.destination as! NewFriendViewController
        newFriendViewController.addFriendsViewController = self
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FriendTableViewCell
        
        var friend = friendArray[indexPath.row]
        
        cell.nameLabel.text = friend.name
        
        cell.currentFriend = friend
            
        cell.tableViewController = self
        
//        cell.moodTextLabel.text = 
        
        cell.moodButton.setTitle(friend.mood.rawValue, for: .normal)
        
        return cell
    }
}
