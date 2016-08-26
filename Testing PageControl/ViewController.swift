//
//  ViewController.swift
//  Testing PageControl
//
//  Created by John Cornyn on 8/26/16.
//  Copyright © 2016 Johnny Cornyn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurePageControl()
        pageControlValueDidChange()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    let colors = [
        UIColor.blackColor(),
        UIColor.redColor(),
        UIColor.blueColor(),
        UIColor.greenColor(),
        UIColor.cyanColor()
    ]
    func configurePageControl() {
        // The total number of pages that are available is based on how many available colors we have.
        pageControl.numberOfPages = colors.count
        pageControl.currentPage = 2
        
        pageControl.tintColor = UIColor.orangeColor()
        pageControl.pageIndicatorTintColor = UIColor.magentaColor()
        pageControl.currentPageIndicatorTintColor = UIColor.yellowColor()
        
        pageControl.addTarget(self, action: #selector(ViewController.pageControlValueDidChange), forControlEvents: .ValueChanged)
    }
    func pageControlValueDidChange() {
        
        colorView.backgroundColor = colors[pageControl.currentPage]
    }
    

}

