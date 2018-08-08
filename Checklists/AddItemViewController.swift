//
//  AddItemViewController.swift
//  Checklists
//
//  Created by Chenyang Lu on 8/6/18.
//  Copyright © 2018 Razeware. All rights reserved.
//

import Foundation

import UIKit

protocol AddItemViewChontrollerDelegate: class {
  func addItemViewControllerDidCancel(_ controller: AddItemViewController)
  func addItemViewController(_ controller: AddItemViewController,
                             didFinishAdding item: ChecklistItem)
  }

class AddItemViewController: UITableViewController, UITextFieldDelegate{
   
    @IBOutlet weak var doneBarButton: UIBarButtonItem!
    
    @IBOutlet weak var textFeild: UITextField!
    
    @IBAction func cancel(){
      delegate?.addItemViewControllerDidCancel(self)
  }
  
    @IBAction func done(){
    let item = ChecklistItem()
    item.text = textFeild.text!
    item.checked = false
      
    delegate?.addItemViewController(self, didFinishAdding: item)
  }
  
    weak var delegate: AddItemViewChontrollerDelegate?
  
    override func tableView(_ tableView: UITableView,
                          willSelectRowAt indexPath: IndexPath) -> IndexPath? {
    return nil
  }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        textFeild.becomeFirstResponder()
    }
    
    func textField(_ textField:UITextField,
        shouldChangeCharactersIn range: NSRange,
        replacementString string: String) -> Bool {
        let oldText = textFeild.text! as NSString
        let newText = oldText.replacingCharacters(in:range, with: string)
                                                as NSString
        if newText.length > 0{
            doneBarButton.isEnabled = true
        }else{
            doneBarButton.isEnabled = false
        }
        return true
        
    }
}
