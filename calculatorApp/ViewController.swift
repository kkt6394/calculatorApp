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
    let button5 = UIButton()
    let button6 = UIButton()
    let button7 = UIButton()
    let button8 = UIButton()
    let button9 = UIButton()
    let button10 = UIButton()
    let button11 = UIButton()
    let button12 = UIButton()
    let button13 = UIButton()
    let button14 = UIButton()
    let button15 = UIButton()
    let button16 = UIButton() // 줄일 방법 찾기.

    let stackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
        let horizontalStackView1 = makeHorizontalStackView([button1, button2, button3, button4])
        view.addSubview(horizontalStackView1)
        
        let horizontalStackView2 = makeHorizontalStackView([button5, button6, button7, button8])
        view.addSubview(horizontalStackView2)
        
        let horizontalStackView3 = makeHorizontalStackView([button9, button10, button11, button12])
        view.addSubview(horizontalStackView3)
        
        let horizontalStackView4 = makeHorizontalStackView([button13, button14, button15, button16])
        view.addSubview(horizontalStackView4)

        
        horizontalStackView1.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.height.equalTo(80)
            $0.width.equalTo(350)
        }
        horizontalStackView2.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.height.equalTo(80)
            $0.width.equalTo(350)
            $0.top.equalTo(horizontalStackView1.snp.bottom).offset(10)
        }
        horizontalStackView3.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.height.equalTo(80)
            $0.width.equalTo(350)
            $0.top.equalTo(horizontalStackView2.snp.bottom).offset(10)
        }
        horizontalStackView4.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.height.equalTo(80)
            $0.width.equalTo(350)
            $0.top.equalTo(horizontalStackView3.snp.bottom).offset(10)
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
    
    func makeVerticalStackView(_ views: [UIView]) -> UIStackView {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        
        views.forEach { stackView.addArrangedSubview($0) }
        return stackView
        
    }
    
    
}

