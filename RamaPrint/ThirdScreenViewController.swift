//
//  ThirdScreenViewController.swift
//  RamaPrint
//
//  Created by Safet MULLAABAZI on 16/07/2020.
//  Copyright © 2020 Safet MULLAABAZI. All rights reserved.
//

import UIKit


class ThirdScreenViewController: UIViewController, UIScrollViewDelegate {
    
    @IBAction func backbutton2(_ sender: Any) {
        self.performSegue(withIdentifier: "HomeSegue3", sender: self)
    }
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var contentWidth: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        
        for image in 0...3 {
            let imageToDisplay = UIImage (named: "\(image).png")
            let imageView = UIImageView(image: imageToDisplay)
            
            scrollView.addSubview(imageView)
            
            let xCoordinate =  view.frame.width * CGFloat(image)
            
            contentWidth += view.frame.width
            
            imageView.frame = CGRect(x: xCoordinate, y: view.frame.height/3, width: 400, height: 250)
        }
    scrollView.contentSize = CGSize(width: contentWidth, height: view.frame.height)
    }
    
     func scrollViewDidScroll(_ scrollView: UIScrollView) {
        pageControl.currentPage = Int(scrollView.contentOffset.x / CGFloat(375))
    }

    
}




    
    
    














