//
//  SettingsViewController.swift
//  PlotnikovDV_HW2.3_swchScreen
//
//  Created by Dmitrii on 31.10.2021.
//

import UIKit

class SettingsViewController: UIViewController {


    @IBOutlet weak var setNameTF: UITextField!
    
    @IBOutlet weak var setYearsTF: UITextField!
    
    @IBOutlet weak var setPhoneTF: UITextField!
    
    @IBOutlet weak var setHobbiesTF: UITextField!
    
    
    
    @IBAction func saveChangesButton(_ sender: UIButton) {
        func prepare(for segue: UIStoryboardSegue, sender: Any?) {
                guard let changeVC = segue.destination as? InfoViewController else { return }
            changeVC.name = setNameTF.text
        }
    
    }
}
