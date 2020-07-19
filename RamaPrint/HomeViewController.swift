//
//  ViewController.swift
//  RamaPrint
//
//  Created by Safet MULLAABAZI on 09/07/2020.
//  Copyright © 2020 Safet MULLAABAZI. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBAction func DesignButton(_ sender: Any) {
        
        self.performSegue(withIdentifier: "SecondViewSegue", sender: self)

    }
    @IBAction func DButton(_ sender: Any) {
        self.performSegue(withIdentifier: "ThirdSegue", sender: self)
    }
    @IBAction func PrintButton(_ sender: Any) {
        self.performSegue(withIdentifier: "FourthSegue", sender: self)
    }
    @IBAction func location(_ sender: Any) {
        
        let alert = UIAlertController(title: "We're sorry!", message: "We are working on that and will be able soon!", preferredStyle: .alert)
        let subButton = UIAlertAction(title: "Close", style: .default, handler: nil)
        alert.addAction(subButton)
        self.present(alert, animated: true, completion: nil)
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

