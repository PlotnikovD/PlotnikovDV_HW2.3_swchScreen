//
//  ViewController.swift
//  PlotnikovDV_HW2.3_swchScreen
//
//  Created by Dmitrii on 27.10.2021.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    var alertMessageName = "Your name is User 😉"
    var alertMessagePassword = "Your password is Password 😎"
 
    
    @IBAction func loginTapped(_ sender: UIButton) {
            performSegue(withIdentifier: "deteilSegue", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? WelcomeViewController else { return }
        dvc.login = loginTF.text
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    @IBAction func showAlertButtonTapped(message: String) {

            let alert = UIAlertController(title: "Oops!", message: message, preferredStyle: UIAlertController.Style.alert)

            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

            self.present(alert, animated: true, completion: nil)
        }
    
    @IBAction func forgotNameButton() {
        showAlertButtonTapped(message: alertMessageName)
    }
    
    @IBAction func forgotPasswordButton() {
        showAlertButtonTapped(message: alertMessagePassword)
    }
    


}

