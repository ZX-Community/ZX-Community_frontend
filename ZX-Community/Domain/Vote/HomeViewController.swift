//
//  HomeViewController.swift
//  ZX-Community
//
//  Created by 김사랑 on 2022/11/18.
//

import UIKit
import Tabman
import Pageboy

class HomeViewController: TabmanViewController {
    
    //MARK: - Property
    
    private var Battles: [UIViewController] = [YellowBattleViewController(),LatteBattleViewController() ]
    
    
    //MARK: - UI Property
    weak var tabView : UIView!
    
    //MARK: - LifeCycle/Initializer
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataSource = self
        // Do any additional setup after loading the view.
        self.setUpView()
         
    }
    
    //MARK: - Custom Method
    
    func setUpView(){
        
        //bar
        let bar = TMBar.ButtonBar()
                
        //탭바 레이아웃 설정
        bar.layout.transitionStyle = .snap
        bar.layout.alignment = .centerDistributed
        bar.layout.contentMode = .fit
        bar.layout.interButtonSpacing = view.bounds.width / 8

                
        //배경색
       bar.backgroundView.style = .clear
       bar.backgroundColor = UIColor.white
                
        //간격설정
        bar.layout.contentInset = UIEdgeInsets(top: 10, left: 0, bottom: 0, right: 10)
                
        //버튼 글시 커스텀
        bar.buttons.customize{
            (button)
            in
            button.tintColor = UIColor.gray
            button.selectedTintColor = UIColor.black
//             button.font = UIFont.font(.robotoBold, ofSize: 14)
        }
        //indicator
        bar.indicator.weight = .custom(value: 3)
        bar.indicator.overscrollBehavior = .bounce
       bar.indicator.tintColor = UIColor.black

        addBar(bar, dataSource: self, at:.top)
    }
    
}

extension HomeViewController: PageboyViewControllerDataSource, TMBarDataSource {
    
    func barItem(for bar: TMBar, at index: Int) -> TMBarItemable {
        switch index {
        case 0:
            return TMBarItem(title: "노란싹수 배틀")
        case 1:
            return TMBarItem(title: "라떼 배틀")
        default:
            let title = "Page \(index)"
           return TMBarItem(title: title)
        }
    }

    func numberOfViewControllers(in pageboyViewController: PageboyViewController) -> Int {
        return 2
    }
    
    func viewController(for pageboyViewController: PageboyViewController, at index: PageboyViewController.PageIndex) -> UIViewController? {
        return Battles[index]
    }
    
    func defaultPage(for pageboyViewController: PageboyViewController) -> PageboyViewController.Page? {
        return nil
    }
}
