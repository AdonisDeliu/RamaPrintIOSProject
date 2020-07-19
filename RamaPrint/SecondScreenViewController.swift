//
//  SecondScreenViewController.swift
//  RamaPrint
//
//  Created by Safet MULLAABAZI on 16/07/2020.
//  Copyright © 2020 Safet MULLAABAZI. All rights reserved.
//

import UIKit

class SecondScreenViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBAction func BackButtonPress(_ sender: Any) {
        self.performSegue(withIdentifier: "HomeSegue", sender: self)
    }
    @IBOutlet weak var tabelView: UITableView!
    
    let titlesF = [("Simple Bar"),(""),(""),(""),("VALBONI"),("REAH"),("SHALA")]
    let desF = [("I have a crush on you"),("and i cross my fingers, you love me too"),("Now, let's drink to that"),("cuz it's all in my head."),("Etiketa ngjitese"),("Reklame ndriquese"),("Shkrepsa")]
    let imagesF = [UIImage (named: "designfour"),
                   UIImage (named: "designfive"),
                   UIImage (named: "designsix"),
                   UIImage (named: "designseven"),
                   UIImage (named: "designthree"),
                   UIImage (named: "designone"),
                   UIImage (named: "designtwo")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tabelView.delegate = self
        tabelView.dataSource = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        myAlert(title: "Hello There!", message: "You're at Design page, for Home page press Button Back")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titlesF.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath as IndexPath)
        as! TableViewCell
        cell.imageCell.image = self.imagesF[indexPath.row]
        cell.titleLabel01.text = self.titlesF[indexPath.row]
        cell.textLabel02.text = self.desF[indexPath.row]
        
        return cell
        
    }
    
    func myAlert(title: String, message: String){
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (action) in
            alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
    }
    
}
