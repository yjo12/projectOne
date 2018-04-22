//
//  CookieViewController.swift
//  projectOne
//
//  Created by SWUCOMPUTER on 2018. 4. 21..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class CookieViewController: UIViewController {

    @IBOutlet var cookieImage: UIImageView!
    @IBOutlet var cookieLabel: UILabel!
    let cookie1 = UIImage(named: "cookie1.jpg")
    let cookie2 = UIImage(named: "cookie2.jpg")
    var randomInt = 1
    
    //버튼을 누르면 어떤 이미지가 들어있는지에 따라 레이블을 변경한다
    @IBAction func cookieButton() {
        if cookieImage.image == cookie1 {
            cookieImage.image = cookie2
            cookieLabel.text = randomSaying()
        } else {
            cookieImage.image = cookie1
            cookieLabel.text = ""
        }
    }
    
    //레이블에 들어갈 말을 랜덤하게 고른다
    func randomSaying() -> String {
        randomInt = Int(arc4random_uniform(_:UInt32(sayingArray.count)))
        return sayingArray[randomInt]
    }
    
    //레이블에 들어갈 말을 어레이로 선언한다
    var sayingArray: [String] = [
        "사랑은 눈으로 보지 않고 마음으로 보는 거지.",
        "많이 보고 많이 겪고 많이 공부하는 것은 배움의 세 기둥이다.",
        "오직 한 가지 성공이 있을 뿐이다. 바로 자기 자신만의 방식으로 삶을 살아갈 수 있느냐이다.",
        "아무런 위험을 감수하지 않는다면 더 큰 위험을 감수하게 될 것이다.",
        "우연이 아닌 선택이 운명을 결정한다.",
        "성공이란 열정을 잃지 않고 실패를 거듭할 수 있는 능력이다.",
        "티끌 모아 태산",
        "성공한 사람보다는 가치 있는 사람이 되려 하라.",
        "현재가 과거와 다르길 바란다면 과거를 공부하라.",
        "그 어떤 것에서라도 내적인 도움과 위안을 찾을 수 있다면 그것을 잡아라.",
        "탁월한 능력은 새로운 과제를 만날 때마다 스스로 발전하고 드러낸다.",
        "모든 성공은 더 어려운 문제로 가는 입장권을 사는 것일 뿐이다."
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        cookieImage.image = cookie1
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
