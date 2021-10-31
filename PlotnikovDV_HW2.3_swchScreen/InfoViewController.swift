//
//  InfoViewController.swift
//  PlotnikovDV_HW2.3_swchScreen
//
//  Created by Dmitrii on 31.10.2021.
//

import UIKit

class InfoViewController: UIViewController {
    
    
    @IBOutlet weak var nameLable: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var phoneNumberLabel: UILabel!
    
    @IBOutlet weak var hobbyLabel: UILabel!
    
    var name: String?
    
    /*override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let changeVC = segue.destination as? SettingsViewController else { return }
        changeVC.name = nameLable.text
    } */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let name = self.name else { return }
        nameLable.text = name
    }
}
    
