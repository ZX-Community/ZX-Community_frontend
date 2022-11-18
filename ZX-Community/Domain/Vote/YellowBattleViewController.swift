//
//  YellowBattleViewController.swift
//  ZX-Community
//
//  Created by 이민섭 on 2022/11/18.
//

import UIKit
import SnapKit

class YellowBattleViewController: UIViewController {
    
    
    
    
    
    
    //MARK: - UI Property
    let titlelabel: UILabel = {
      let label = UILabel()
      label.textAlignment = .center
      label.text = "누가 더 싹수가 노란가"
      return label
    }()
    
    //MARK: - LifeCycle/Initializer
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
        setConstraints()
        // Do any additional setup after loading the view.
    }
    
    func setUpView(){
        
        self.view.addSubview(titlelabel)
    }
    
    func setConstraints() {
        titlelabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        
    }
}
