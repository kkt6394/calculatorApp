//
//  ViewController.swift
//  calculatorApp
//
//  Created by 김기태 on 3/26/25.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let label = UILabel()
    let button1 = UIButton()
    let button2 = UIButton()
    let button3 = UIButton()
    let button4 = UIButton()
    let stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        let horizontalStackView = makeHorizontalStackView([button1, button2, button3, button4])
        view.addSubview(horizontalStackView)
        
        horizontalStackView.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.height.equalTo(80)
            $0.width.equalTo(350)
        }
    }
    private func configureUI() {
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
    func makeHorizontalStackView(_ views: [UIView]) -> UIStackView {
        let stackView = UIStackView()
        stackView.backgroundColor = .black
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.distribution = .fillEqually

        views.forEach { stackView.addArrangedSubview($0) }
        return stackView
    }
//    func makeButton
    
    
}

