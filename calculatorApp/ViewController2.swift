//
//  ViewController2.swift
//  calculatorApp
//
//  Created by 김기태 on 3/27/25.
//

import UIKit
import SnapKit

extension ViewController {
    func configureUI() {
        view.backgroundColor = .black
        // label 속성
        label.textColor = .white
        label.text = "12345"
        label.textAlignment = .right
        label.font = .boldSystemFont(ofSize: 60)
        
        // button 속성
        button1.setTitle("7", for: .normal)
        button1.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button1.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button1.layer.cornerRadius = 40
        
        button2.setTitle("8", for: .normal)
        button2.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button2.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button2.layer.cornerRadius = 40

        button3.setTitle("9", for: .normal)
        button3.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button3.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button3.layer.cornerRadius = 40

        button4.setTitle("+", for: .normal)
        button4.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button4.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button4.layer.cornerRadius = 40
        
        button5.setTitle("4", for: .normal)
        button5.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button5.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button5.layer.cornerRadius = 40
        
        button6.setTitle("5", for: .normal)
        button6.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button6.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button6.layer.cornerRadius = 40

        button7.setTitle("6", for: .normal)
        button7.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button7.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button7.layer.cornerRadius = 40

        button8.setTitle("-", for: .normal)
        button8.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button8.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button8.layer.cornerRadius = 40
        
        button9.setTitle("1", for: .normal)
        button9.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button9.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button9.layer.cornerRadius = 40
        
        button10.setTitle("2", for: .normal)
        button10.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button10.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button10.layer.cornerRadius = 40

        button11.setTitle("3", for: .normal)
        button11.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button11.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button11.layer.cornerRadius = 40

        button12.setTitle("*", for: .normal)
        button12.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button12.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button12.layer.cornerRadius = 40
        
        button13.setTitle("AC", for: .normal)
        button13.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button13.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button13.layer.cornerRadius = 40
        
        button14.setTitle("0", for: .normal)
        button14.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button14.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button14.layer.cornerRadius = 40

        button15.setTitle("=", for: .normal)
        button15.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button15.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button15.layer.cornerRadius = 40

        button16.setTitle("/", for: .normal)
        button16.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        button16.backgroundColor = UIColor(red: 58/255, green: 58/255, blue: 58/255, alpha: 1.0)
        button16.layer.cornerRadius = 40




        
        
        
        
        // horizontalStackView 속성
        stackView.axis = .horizontal
        stackView.backgroundColor = .black
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        
        [label, stackView]
            .forEach {view.addSubview($0)}
        
        label.snp.makeConstraints {
            $0.leading.equalToSuperview().offset(30)
            $0.trailing.equalToSuperview().offset(-30)
            $0.top.equalToSuperview().offset(200)
            $0.height.equalTo(100)
        }
        stackView.snp.makeConstraints {
            $0.height.equalTo(80)
        }
    }
}
