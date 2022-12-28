//
//  ViewController.swift
//  Random Comad
//
//  Created by Ivan Muzalevski on 21.12.22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {


    var result = ""
    @IBOutlet weak var namePlayerTF: UITextField!
     
    override func viewDidLoad() {
        super.viewDidLoad()
      
        namePlayerTF.delegate = self
    
    }
    @IBAction func nextButtonAction(_ sender: UIButton) {
    
    }
    
    @IBAction func listNameButtonAction(_ sender: UIButton) {
        let vcNamePlayers = storyboard?.instantiateViewController(withIdentifier: "VCNamePlayers") as! VCNamePlayers
        present(vcNamePlayers, animated: true)
        
        
        vcNamePlayers.nameLabel.lineBreakMode = .byWordWrapping
        vcNamePlayers.nameLabel.numberOfLines = 0
        vcNamePlayers.nameLabel.text = result
        
        
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        result += "\n\(namePlayerTF.text!) "
        namePlayerTF.text = nil
        print(result)
        return true
    }
  
}

