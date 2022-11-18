//
//  ViewController.swift
//  ZX-Community
//
//  Created by 김사랑 on 2022/10/11.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let title = UILabel(frame: CGRect(x: 0, y: 100, width: 100, height: 30))
                
        title.text = "첫번째 탭"
        title.textColor = .red
        title.textAlignment = .center
        title.font = UIFont.boldSystemFont(ofSize: 14)
        title.sizeToFit() //콘텐츠의 내용에 맞게 레이블 크기 변경
        /*
            sizeToFit()는 콘텐츠의 길이에 맞춰 레이블의 크기를 조절해 주는 메서드입니다.
            이 메서드의 호출이 없으면 레이블의 너비를 넘는 콘텐츠는 엘립시스가 발생합니다.
         */
                
        title.center.x = self.view.frame.width / 2
        self.view.addSubview(title)

        //탭바 이미지 타이틀 등록 - appDelegate 로 이동
        //self.tabBarItem.image = UIImage(named: "calendar")
        //self.tabBarItem.title = "Calendar"
                

        //MARK: [1]네비게이션 바 타이틀 초기화
        //self.initTitle()

        
        //MARK: [2]네비게이션바 타이틀 초기화 2
        //self.initTitleNew()
                
            
        //MARK: [3] 네비게이션 바 타이틀 이미지 초기화 3
        //self.initTitleImage()
            
                
        //MARK: [4]네비게이션 바 텍스트 필드 4
        self.initTextInput()
    }

    //MARK: 네비게이션 바 타이틀 구현 메서드
    func initTitle()  {
        
        let nTitle = UILabel()
        nTitle.frame = CGRect(x: 0, y: 0, width: 200, height: 40)
        nTitle.numberOfLines = 2
        nTitle.textAlignment = .center
        nTitle.font = UIFont.systemFont(ofSize: 15)
        nTitle.text = "58개 숙소 \n 1박(1월~10일 ~ 1월 11일)"
        nTitle.textColor = .white
                
        //배경 생상 설정
        let color = UIColor(red: 0.02, green: 0.22, blue: 0.49, alpha: 1.0 )
        self.navigationController?.navigationBar.barTintColor = color
                
        //titleView 속성은 뷰 기반으로 타이틀을 사용할 수 있음
        self.navigationItem.titleView = nTitle
    }

            
    //MARK: 네비게이션 바 타이틀 구현 메서드 2
    func initTitleNew() {
        //레이아웃을 구현할 컨테이너 뷰
        let containerView = UIView(frame: CGRect(x: 0, y: 0, width: 200, height: 36))
                
        //상단 레이블
        let topTitle = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 18))
        topTitle.numberOfLines = 1
        topTitle.textAlignment = .center
        topTitle.font = UIFont.systemFont(ofSize: 15)
        topTitle.text = "58개 숙소"
        topTitle.textColor = .white
                
                
        //하단 레이블
        let subTitle = UILabel(frame: CGRect(x: 0, y: 18, width: 200, height: 18))
        subTitle.numberOfLines = 1
        subTitle.textAlignment = .center
        subTitle.font = UIFont.systemFont(ofSize: 12)
        subTitle.text = "1박(1월~10일 ~ 1월 11일)"
        subTitle.textColor = .white
                
        //레이블을 컨테이너 뷰에 추가
        containerView.addSubview(topTitle)
        containerView.addSubview(subTitle)
                
                
        //네비게이션 타이틀에 컨테이너 뷰를 대입
        self.navigationItem.titleView = containerView
                
        //배경 생상 설정
        let color = UIColor(red: 0.02, green: 0.22, blue: 0.49, alpha: 1.0 )
        self.navigationController?.navigationBar.barTintColor = color
                
    }
            
    //MARK: 네비게이션바에 이미지 넣기
    func initTitleImage() {
        
        let img = UIImage(named: "Profile")
        
        let imageV = UIImageView(image: img)
        
        self.navigationItem.titleView = imageV
        
    }
            
    //MARK: 네비게이션 바 텍스트 필드
    func initTextInput(){
                
        //가운데 검색 영역
        let tf = UITextField()
        tf.frame = CGRect(x: 0, y: 0, width: 200, height: 35)
        tf.backgroundColor = .white
        tf.font = UIFont.systemFont(ofSize: 13)
        tf.autocorrectionType = .no
        tf.autocapitalizationType = .none
        tf.spellCheckingType = .no
        tf.keyboardType = .URL
        tf.keyboardAppearance = .dark
        tf.layer.borderWidth = 0.3
        tf.layer.borderColor = UIColor(red: 0.60, green: 0.60, blue: 0.60, alpha: 1.0).cgColor
                
        //가운데 네비게이션 타이틀에 추가
        self.navigationItem.titleView = tf
            
                
        //MARK: 왼쪽 아이템 영역
        let back = UIImage(named: "Home")
        let leftItem = UIBarButtonItem(image: back, style: .plain, target: self, action: nil)
        self.navigationItem.leftBarButtonItem = leftItem
                
            
                
                //MARK: 오른쪽 아이템 정의
        let cnt = UILabel()
        cnt.frame = CGRect(x: 10, y: 8, width: 20, height: 20)
        cnt.font = UIFont.systemFont(ofSize: 10)
        cnt.textColor = UIColor(red: 0.60, green: 0.60, blue: 0.60, alpha: 1.0)
        cnt.text = "12"
        cnt.textAlignment = .center
        cnt.layer.cornerRadius = 3 //모서리 둥글게
        cnt.layer.borderWidth = 2
        cnt.layer.borderColor = UIColor(red: 0.60, green: 0.60, blue: 0.60, alpha: 1.0).cgColor
        
        //카운트 뷰
        let rightItem = UIBarButtonItem(customView: cnt)
        
        //더보기 버튼 뷰
        let more = UIButton(type: .system)
        more.frame = CGRect(x: 50, y: 10, width: 16, height: 16)
        more.setImage(UIImage(named: "Home"), for: .normal)
        let rightItem2 = UIBarButtonItem(customView: more)
                
        //rightBarButtonItems는 바 버튼 아이템을 배열로 받습니다.
        self.navigationItem.rightBarButtonItems = [rightItem2 , rightItem]

    }
}

