//
//  FourthScreenViewController.swift
//  RamaPrint
//
//  Created by Safet MULLAABAZI on 16/07/2020.
//  Copyright © 2020 Safet MULLAABAZI. All rights reserved.
//

import UIKit

class FourthScreenViewController: UIViewController {
    @IBAction func BackButton3(_ sender: Any) {
        self.performSegue(withIdentifier: "HomeSegue4", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
