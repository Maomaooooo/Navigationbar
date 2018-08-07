//
//  AddItemViewController.swift
//  Checklists
//
//  Created by Chenyang Lu on 8/6/18.
//  Copyright © 2018 Razeware. All rights reserved.
//

import Foundation

import UIKit
class AddItemViewController: UITableViewController{
  @IBAction func cancel(){
    dismiss(animated: true, completion: nil)
  }
  
  @IBAction func done(){
    dismiss(animated: true, completion: nil)
  }
  
  override func tableView(_ tableView: UITableView,
                          willSelectRowAt indexPath: IndexPath) -> IndexPath? {
    return nil
  }
}
