//
//  ViewController.swift
//  Instagram
//
//  Created by Jaehoon So on 2022/05/08.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Check auth status
        handleNotAuthenticated()
    }
    
    private func handleNotAuthenticated() {
        if Auth.auth().currentUser == nil {
            // 로그인을 보여준다.
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen // 유저가 스와이프를 통해 빠져나갈 수 없도록 함
            present(loginVC, animated: false, completion: nil)
            
        }
    }


}

