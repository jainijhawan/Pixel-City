//
//  PopVC.swift
//  Pixel City
//
//  Created by Jai Nijhawan on 16/04/19.
//  Copyright © 2019 Jai Nijhawan. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {
    @IBOutlet weak var popImageView: UIImageView!
    
    var passedImage : UIImage!
    
    func initiData(forImage image: UIImage){
        self.passedImage = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        addDoubleTap()
    }
  
    func addDoubleTap(){
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }
}
