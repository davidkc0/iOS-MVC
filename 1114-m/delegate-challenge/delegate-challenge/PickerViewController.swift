//
//  PickerViewController.swift
//  delegate-challenge
//
//  Created by Nikolas Burk on 07/10/16.
//  Copyright © 2016 Nikolas Burk. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController ,UIPickerViewDelegate {
  
  @IBOutlet weak var pickerView: UIPickerView!
  @IBOutlet weak var cityLabel: UILabel!
  
  let cities = ["New York", "San Francisco", "Berlin", "Hamburg", "Paris"]
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cities.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cities[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        cityLabel.text = cities[row]
    }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    pickerView.delegate = self
  }
  
}
