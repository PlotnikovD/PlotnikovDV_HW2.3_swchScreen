//
//  WelcomeViewController.swift
//  PlotnikovDV_HW2.3_swchScreen
//
//  Created by Dmitrii on 27.10.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    var login: String?

    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = self.login else { return }
        label.text = "Hello \(login)"
    }
    

    @IBAction func goBackTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    
}

