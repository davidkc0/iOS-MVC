//
//  NewFriendViewController.swift
//  MoodTracker-starter
//
//  Created by David Ciaffoni on 11/14/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class NewFriendViewController: UIViewController {
    
    var friendsController: FriendsTableViewController!
    
    //MARK: IBActions
    @IBOutlet weak var addFriendsName: UITextField!
    @IBOutlet weak var addMoodEmoji: UISegmentedControl!
    
    @IBAction func submitNewFriendButton(_ sender: Any) {
        
        let friendName = addFriendsName.text
        var mood: Mood!
        
        switch addMoodEmoji.selectedSegmentIndex {
        case 0: mood = Mood.happy
        case 1: mood = Mood.ok
        case 2: mood = Mood.mad
        default: mood = Mood.ok
        }

        
        let friend = Friend(name: friendName!, mood: mood)
        
        friendsController.addFriend(newFriend: friend)
        dismissViewController()
     
        
    }
    
    func dismissViewController() {
        presentingViewController?.dismiss(animated: true)
    }
        

    var addFriendsViewController = FriendsTableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
