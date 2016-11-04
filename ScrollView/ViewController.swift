//
//  ViewController.swift
//  ScrollView
//
//  Created by Younoussa Ousmane Abdou on 11/4/16.
//  Copyright © 2016 Younoussa Ousmane Abdou. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    var images = [UIImageView]()
    
    var contentSize: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        let scrollWidth = scrollView.frame.size.width
        
        for x in 0...2 {
            
            let image = UIImage(named: "icon\(x).png")
            let imageView = UIImageView(image: image)
            images.append(imageView)
            
            var newX: CGFloat = 0.0
            newX = scrollWidth / 2 + scrollWidth * CGFloat(x)
            
            scrollView.addSubview(imageView)
            imageView.frame = CGRect(x: newX - 75, y: (scrollView.frame.height / 2) - 75, width: 150, height: 150)
            
            contentSize += newX
        }
        
        scrollView.contentSize = CGSize(width: contentSize, height: view.frame.size.height)
        
        scrollView.clipsToBounds = false
    }
}

