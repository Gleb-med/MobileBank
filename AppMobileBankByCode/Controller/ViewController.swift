//
//  ViewController.swift
//  testSegueAndNavC
//
//  Created by Глеб Рахимжанов on 04.05.2022.
//

import UIKit

// Структура для передачи данных между контроллерами
class StructOperation {
   struct glovalVariable {
   static var userName = String();
  }
}

class ViewController: UIViewController {
    let segueButton = UIButton().self
    let fieldTextLogin = UITextField().self
    let fieldTextPassw = UITextField().self

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        
        // Создаем текстовые поля для ввода логина
        fieldTextLogin.placeholder = "insert login"
        view.addSubview(fieldTextLogin)
        fieldTextLogin.frame = CGRect(x: 115, y: 350, width: 200, height: 48)
        fieldTextLogin.backgroundColor = .systemGray2
        
        // Пароля
        fieldTextPassw.placeholder = "insert password"
        view.addSubview(fieldTextPassw)
        fieldTextPassw.frame = CGRect(x: 115, y: 400, width: 200, height: 48)
        fieldTextPassw.backgroundColor = .systemGray2
        
        // Создаем кнопку перехода в личный кабинет
        segueButton.setTitle("Login", for: .normal)
        view.addSubview(segueButton)
        segueButton.backgroundColor = .darkGray
        segueButton.setTitleColor(.white, for: .normal)
        segueButton.frame = CGRect(x: 65, y: 500, width: 300, height: 48)
        segueButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
    }
    
    // Функция нажатия на кнопку
    @objc private func didTapButton(){
        let rootVC = SecondViewController()
        let navVC = UINavigationController(rootViewController: rootVC)
        navVC.modalPresentationStyle = .fullScreen
        StructOperation.glovalVariable.userName = self.fieldTextLogin.text!
        if StructOperation.glovalVariable.userName == "" {StructOperation.glovalVariable.userName = "Anonymous"}
        present(navVC, animated: true)
    }
}
