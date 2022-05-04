//
//  SecondViewController.swift
//  AppMobileBankByCode
//
//  Created by Глеб Рахимжанов on 04.05.2022.
//

import Foundation
import UIKit

// Контроллер личного кабинета
class SecondViewController: UIViewController {
    
    // инициализация модели
    var bankModel = BankModel()
    
    // текст баланса
    private let balance_label = UILabel().self
    
    // создание кнопок
    private let add_money_button = UIButton().self
    private let del_money_button = UIButton().self
    
    override func viewDidLoad(){
        view.backgroundColor = .systemGray
        title = StructOperation.glovalVariable.userName + ", hello!"
        
        //описание текста баланса
        balance_label.text = "Balance: " + String(self.bankModel.balance) + " rub"
        view.addSubview(balance_label)
        balance_label.frame = CGRect(x: 145, y: 100, width: 300, height: 48)
        
        //описание кнопки add money
        add_money_button.setTitle("Add money", for: .normal)
        view.addSubview(add_money_button)
        add_money_button.backgroundColor = .darkGray
        add_money_button.setTitleColor(.white, for: .normal)
        add_money_button.frame = CGRect(x: 65, y: 500, width: 300, height: 48)
        add_money_button.addTarget(self, action: #selector(addMoneyButton), for: .touchUpInside)
        //del money
        del_money_button.setTitle("Del money", for: .normal)
        view.addSubview(del_money_button)
        del_money_button.backgroundColor = .darkGray
        del_money_button.setTitleColor(.white, for: .normal)
        del_money_button.frame = CGRect(x: 65, y: 550, width: 300, height: 48)
        del_money_button.addTarget(self, action: #selector(delMoneyButton), for: .touchUpInside)
    }
    
    @objc private func addMoneyButton(){
        self.bankModel.balance = self.bankModel.balance + 1000
        balance_label.text = "Balance: " + String(self.bankModel.balance) + " rub"
    }
    
    @objc private func delMoneyButton(){
        self.bankModel.balance = self.bankModel.balance - 1000
        balance_label.text = "Balance: " + String(self.bankModel.balance) + " rub"
    }
    
}

