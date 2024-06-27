//
//  ViewController.swift
//  ImageViewer
//
//  Created by Nam on 2024/06/27.
//

import UIKit

class ViewController: UIViewController {
    
    let maxImage = 6
    var numImage = 1
    
    
    @IBOutlet var imgView: UIImageView!
    
    @IBOutlet var beforeBtn: UIButton!
    
    @IBOutlet var afterBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        
        if(numImage > maxImage){
            numImage = 1
        }
        if(numImage < 1){
            numImage = maxImage
        }
        
        let imageName = String(numImage) + ".png"

        imgView.image = UIImage(named: imageName)
        
        
        
    }

    @IBAction func beforebtnFunc(_ sender: UIButton) {
        numImage -= 1
        if(numImage > maxImage){
            numImage = 1
        }
        if(numImage < 1){
            numImage = maxImage
        }
        
        let imageName = String(numImage) + ".png"

        imgView.image = UIImage(named: imageName)
    }
    
    
    @IBAction func afterBtnFunc(_ sender: UIButton) {
        numImage += 1
        if(numImage > maxImage){
            numImage = 1
        }
        if(numImage < 1){
            numImage = maxImage
        }
        
        let imageName = String(numImage) + ".png"

        imgView.image = UIImage(named: imageName)
    }
}

