//
//  SettingsViewController.swift
//  RandomNumber
//
//  Created by Таня Кожевникова on 11.06.2025.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet var minimumValueTF: UITextField!
    @IBOutlet var maximumValueTF: UITextField!
    
    var randomNumber: RandomNumber!
    var delegate: SettingsViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minimumValueTF.delegate = self
        maximumValueTF.delegate = self
        minimumValueTF.text = String(randomNumber.minimumValue)
        maximumValueTF.text = String(randomNumber.maximumValue)
    }
    
    @IBAction func cancelButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
    @IBAction func saveButtonPressed(_ sender: UIBarButtonItem) {
        minimumValueTF.resignFirstResponder()
        maximumValueTF.resignFirstResponder()
        delegate.setNewValues(for: randomNumber)
        dismiss(animated: true)
    }
    
}

extension SettingsViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        guard let newValue = textField.text else { return }
        guard let naumberValue = Int(newValue) else { return }
        if textField == minimumValueTF {
            randomNumber.minimumValue = naumberValue
        } else {
            randomNumber.maximumValue = naumberValue
        }
    }
}
