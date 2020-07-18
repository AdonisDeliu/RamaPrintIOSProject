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
    
    let titlesF = [("Designone"),("Designtwo"),("Designthree")]
    let desF = [("design one is great"),("great also"),("the greatest")]
    let imagesF = [UIImage (named: "designone"),
                   UIImage (named: "designtwo"),
                   UIImage (named: "designthree")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tabelView.delegate = self
        tabelView.dataSource = self
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
    
}
