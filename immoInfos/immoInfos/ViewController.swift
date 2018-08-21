//
//  ViewController.swift
//  immoInfos
//
//  Created by Jean-Yves Alexeline on 20/08/2018.
//  Copyright © 2018 Jean-Yves Alexeline. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var montantAchat: UITextField!
    @IBOutlet weak var montantFraisNotaire: UITextField!
    @IBOutlet weak var reusltat: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        montantAchat.delegate = self
        montantFraisNotaire.delegate = self
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calcule(_ sender: Any) {
        var achat: Int? = Int(montantAchat.text!)
        var notaire: Int? = Int(montantFraisNotaire.text!)
        var total: Int = achat! + notaire!
        var convertTotal = String(total)
        reusltat.text = convertTotal + " €"
    }
    
}

