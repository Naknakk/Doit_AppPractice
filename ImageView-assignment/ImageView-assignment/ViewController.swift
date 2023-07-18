//
//  ViewController.swift
//  ImageView-assignment
//
//  Created by 이윤학 on 2023/07/18.
//

import UIKit

class ViewController: UIViewController {
    var number = 1
    
    @IBOutlet var imgView: UIImageView!
    @IBOutlet var numberOfPicture: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        numberOfPicture.text = "1"
        imgView.image = UIImage(named: "1.png")
    }

    func movePicture(_ n: Int) {
        number += n
        
        if number > 6 {
            number = 1
        } else if number < 1 {
            number = 6
        }
        
        imgView.image = UIImage(named: "\(number).png")
        numberOfPicture.text = "\(number)"
    }
    
    @IBAction func nextPicture(_ sender: UIButton) {
        movePicture(1)
    }
    
    @IBAction func previousPicture(_ sender: UIButton) {
        movePicture(-1)
    }
    
}

