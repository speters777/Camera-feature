//
//  ViewController.swift
//  CameraFrameSave
//
//  Created by Sahana on 3/11/17.
//  Copyright © 2017 Sahana. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FrameExtractorDelegate {

    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    @IBAction func takePhoto(_ sender: UIButton) {
        frameExtractor = FrameExtractor()
        frameExtractor.delegate = self
    }
    var frameExtractor: FrameExtractor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func captured(image: UIImage) {
        imageView.image = image
    }

 

}

