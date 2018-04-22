//
//  FeelingViewController.swift
//  projectOne
//
//  Created by SWUCOMPUTER on 2018. 4. 22..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class FeelingViewController: UIViewController {

    @IBOutlet var feelingSeg: UISegmentedControl!
    @IBOutlet var feelingText: UITextField!
    @IBOutlet var feelingResultText: UILabel!
    
    @IBAction func feelingButton() {
        if self.feelingSeg.selectedSegmentIndex == 0 {
            self.feelingResultText.text = "우와~ 당신이 기분 좋다니 나도 덩달아 행복해지네요! 오늘도 좋은 하루 보내요^^"
        }
        else if self.feelingSeg.selectedSegmentIndex == 1 {
            self.feelingResultText.text = "혹시 괜찮다면 무슨 일이 있었는지 물어봐도 될까요? 나는 항상 당신을 응원한다는 걸 잊지 말아요!"
        }
        else if self.feelingSeg.selectedSegmentIndex == 2 {
            self.feelingResultText.text = "오 그렇군요! 그러면 내 노래 들어볼래요? 깊은 산 속 옹달샘~ 누가 와서 먹나요~ 어때요? 기분이 더 좋아지지 않나요?"
        }
        else if self.feelingSeg.selectedSegmentIndex == 3 {
            self.feelingResultText.text = "우와아!! 뭐 신기한게 있나요? 나도 보고 싶어요!!"
        }
        else if self.feelingSeg.selectedSegmentIndex == 4 {
            self.feelingResultText.text = "앗.. 가끔 그런 때가 있죠. 맛있는 거 먹으러 갈까요?"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

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
