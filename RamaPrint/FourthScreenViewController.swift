//
//  FourthScreenViewController.swift
//  RamaPrint
//
//  Created by Safet MULLAABAZI on 16/07/2020.
//  Copyright © 2020 Safet MULLAABAZI. All rights reserved.
//

import UIKit

class FourthScreenViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var imgArr = ["designone",
                  "designtwo",
                  "designthree",
                  "designfour",
                  "designfive",
                  "designsix"]
    
    @IBOutlet weak var printImages: UIImageView!
    @IBAction func BackButton3(_ sender: Any) {
        self.performSegue(withIdentifier: "HomeSegue4", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

extension FourthScreenViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgArr.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? DataCollectionViewCell
        cell?.img.image = UIImage(named: imgArr[indexPath.row])
        cell?.lbl.text = imgArr[indexPath.row]
        
        return cell!
    }
}





