//
//  ViewController.swift
//  HelloWorld
//
//  Created by 이윤학 on 2023/07/16.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var lblHello: UILabel!        // 출력 레이블용 아웃렛 변수
    @IBOutlet var txtName: UITextField!     // 이름 입력용 아웃렛 변수. textField에 입력한 내용으로 업데이트된다.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnSend(_ sender: UIButton) {
        // 출력 텍스트를 업데이트한다.
        
        lblHello.text = "Hello, " + (txtName.text ?? "")
        
    }
    
}

