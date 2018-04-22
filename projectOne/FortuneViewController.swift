//
//  FortuneViewController.swift
//  projectOne
//
//  Created by SWUCOMPUTER on 2018. 4. 21..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class FortuneViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var datePicker: UIDatePicker!
    @IBOutlet var zodiacPicker: UIPickerView!
    @IBOutlet var selectedLabel: UILabel!
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var hiddenView: UIView!
    var selected: String!
    
    // zodiacPicker 설정
    let zodiacArray: Array<String> = ["쥐", "소", "호랑이", "토끼", "용", "뱀", "말", "양", "원숭이", "닭", "개", "돼지"]
    func numberOfComponents (in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView (_ pickerView: UIPickerView,
                     numberOfRowsInComponent component: Int) -> Int {
        return zodiacArray.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return zodiacArray[row]
    }
    
    // selected (날짜, 띠) 별 결과 선택
    func printResultLabel(selected:String){
        switch selected
        {
        case "April 20, 2018 / 쥐":
            self.resultLabel.text = "만사형통하는 순조로운 운세가 보장되는 하루가 기대됩니다. 넘치는 의욕이 허락하는 만큼, 힘닿는 대로 모든 일을 추진해 보시기 바랍니다."
        case "April 20, 2018 / 소":
            self.resultLabel.text = "하는 일마다 적잖은 장애가 예상되니 그리 순조로운 운수는 아닙니다. 그러나 곤경 역시 극복할 수 있기에 존재하는 운명의 심술궂은 장난일 뿐입니다."
        case "April 20, 2018 / 호랑이":
            self.resultLabel.text = "오늘 당신의 운수는 너무 욕심을 내면 오히려 손해를 볼 것이라고 충고합니다. 그러나 최선을 다할 필요는 있겠지요. 모든 일은 자신의 의지에 크게 좌우되는 법입니다."
        case "April 20, 2018 / 토끼":
            self.resultLabel.text = "마음이 심란하고 귀가 얇아져 유독 갈등이 많은 하루가 예상됩니다. 주위에 솔깃한 얘기나 주의를 끄는 일들이 많으니 마음이 들떠 갈피를 잡기가 어렵습니다."
        case "April 20, 2018 / 용":
            self.resultLabel.text = "산이 그 땅의 힘을 잃는 형국입니다. 상황이 불리해지거나 어려워지는 처지가 예상됩니다. 이러한 때일수록 쉽게 절망하지 않고 흔들리지 않는 넉넉한 마음이 필요합니다."
        case "April 20, 2018 / 뱀":
            self.resultLabel.text = "뒤로는 큰 산이 우뚝하고 발치로는 도도히 흐르는 장강을 두고 있는 형국입니다. 어떤 일에도 동요되지 않는 든든한 하루가 예상됩니다."
        case "April 20, 2018 / 말":
            self.resultLabel.text = "여러 가지 일에 관여하게 되니 자연히 일도 많고 문제도 많은 하루입니다. 주의력이나 자잘한 배려가 여럿으로 분산되니 일의 진행에 장애가 따름은 당연합니다."
        case "April 20, 2018 / 양":
            self.resultLabel.text = "마지막 시련을 감내해야 하는 하루가 될 것입니다. 인내는 쓰지만 열매는 달다는 경구를 상기하며 얼마 남지 않은 고비를 끝까지 최선을 다해 극복해 내시기 바랍니다."
        case "April 20, 2018 / 원숭이":
            self.resultLabel.text = "중요하지 않은 일에 당신의 의지와 노력을 허비하게 되기 쉽습니다. 당신이 하고자 하는 일과 해야 하는 일 사이에서 다소 혼선과 갈등이 있겠군요."
        case "April 20, 2018 / 닭":
            self.resultLabel.text = "일을 추진하는 데 있어서 주위의 제반 여건이 당신에게 썩 좋은 편은 아닙니다. 그러나 꿋꿋이 밀고 나가십시오. 끈기 있는 도전이 머지않아 결실을 맺게 될 것입니다."
        case "April 20, 2018 / 개":
            self.resultLabel.text = "여러모로 봐서 좋은 상황이 기대되는 하루입니다. 일을 추진하다 보면 확실히 어제보다 주위 여건이 많이 나아진 것을 느낄 수 있을 것입니다."
        case "April 20, 2018 / 돼지":
            self.resultLabel.text = "무엇인가를 얻겠지만 동시에 무엇인가를 잃게 될 수도 있는 운수입니다. 당신의 현명한 판단과 사고가 이 하루를 즐겁게 만들 수도 우울하게 할 수도 있겠습니다."

        case "April 21, 2018 / 쥐":
            self.resultLabel.text = "신중함이 요구됩니다. 괜한 조급함으로 일을 그르치게 될 수도 있으니 급할수록 돌아가라고, 서두르기보다 찬찬히 내실을 쌓아 가는데 더 마음을 쓰시기 바랍니다."
        case "April 21, 2018 / 소":
            self.resultLabel.text = "무엇인가를 끊임없이 시도하려는 하루가 될 것입니다. 계획도 치밀하고 들인 공도 만만치 않습니다. 그러나 정작 당신 자신이 지나치게 소심하군요."
        case "April 21, 2018 / 호랑이":
            self.resultLabel.text = "당신이 열심히 뛰어다닌 만큼 성과가 보장되는 하루입니다. 자신의 능력이 충분히 발휘되는 기회나 때는 우리 인생에서 그리 잦은 선물이 아닐 것입니다."
        case "April 21, 2018 / 토끼":
            self.resultLabel.text = "지금 하고 있는 일에 큰 실수가 예상되는 하루입니다. 조금이라도 이치에 어긋나는 점이 발견된다면 돌이킬 수 없는 문제를 만나기 전에 심각한 고려가 필요합니다."
        case "April 21, 2018 / 용":
            self.resultLabel.text = "아주 상큼한 느낌의 기분 좋은 하루가 예상됩니다. 초봄에 움트는 새싹의 형상이니 이보다 더 좋은 운수는 없을 것입니다."
        case "April 21, 2018 / 뱀":
            self.resultLabel.text = "고생스러운 하루가 예상됩니다. 큰 산을 대상으로 시퍼렇게 날 선 칼을 휘두른들 무슨 이득이 있을까요. 망상에 빠진 돈키호테 같은 형국입니다."
        case "April 21, 2018 / 말":
            self.resultLabel.text = "지난 곤경이 기쁨과 보람이 되어 찾아 들기 시작하는 운수입니다. 이제 서서히 밝은 빛이 비추어 들 것입니다. 하늘은 최선을 다해 노력하는 자를 저버리지 않는 법이니까요."
        case "April 21, 2018 / 양":
            self.resultLabel.text = "마음이 이르는 대로 느끼고 표현하십시오. 유난히 판단과 사고가 명석해지는 운수입니다. 학문적인 연구나 업무의 실적 향상을 위한 연구에 유리한 하루가 될 것입니다."
        case "April 21, 2018 / 원숭이":
            self.resultLabel.text = "중요하지 않은 일에 당신의 의지와 노력을 허비하게 되기 쉽습니다. 당신이 하고자 하는 일과 해야 하는 일 사이에서 다소 혼선과 갈등이 있겠군요."
        case "April 21, 2018 / 닭":
            self.resultLabel.text = "잠시 현실에서 한 발 떨어져 세태를 관망하며 때를 기다릴 수 있는 마음의 여유가 필요한 하루입니다. 조급히 서두르지 않되 또한 신중함을 잃지 않도록 해야겠습니다."
        case "April 21, 2018 / 개":
            self.resultLabel.text = "특별한 길운은 없지만 짓궂은 운명의 훼방을 걱정할 필요도 없으니 땀 흘린 만큼 성과를 기대할 수 있을 것입니다. 당신의 성실한 노력이 요구되는 하루입니다."
        case "April 21, 2018 / 돼지":
            self.resultLabel.text = "도움을 주는 사람도, 도움을 구할 곳도 없는 혈혈단신의 처지가 예상되는 하루입니다. 그러니 수고하는 것에 비해 나타나는 성과가 상대적으로 적을 수밖에 없군요."
            
        case "April 22, 2018 / 쥐":
            self.resultLabel.text = "답답한 하루입니다. 산 너머 산이라고, 문제가 끊이지 않으니 하는 일이 더디고 진척되는 정도도 미미하고 성과도 기대하기 어려울 것입니다."
        case "April 22, 2018 / 소":
            self.resultLabel.text = "첩첩 산중에서 하늘이 보이지 않을 만큼 울창한 숲을 만난 상입니다. 한 치 앞이 불안하니 뜻밖의 사고가 예상되는 하루입니다."
        case "April 22, 2018 / 호랑이":
            self.resultLabel.text = "보다 겸손한 자세가 필요한 하루입니다. 자신의 재주와 능력을 과신하고 저돌적으로 일을 추진하다 보면 화를 초래하기 쉽습니다."
        case "April 22, 2018 / 토끼":
            self.resultLabel.text = "처음에는 불가능해 보이기만 하던 일이 당신의 꾸준한 노력과 인내 끝에 그 결과의 크고 작음을 떠나 의미 있는 성과를 이룰 것입니다."
        case "April 22, 2018 / 용":
            self.resultLabel.text = "오늘 하루는 뜻하는 바를 이루기에 많은 어려움이 예상되는 시기입니다. 더 크고 넓게 볼 수 있는 당신의 안목이 요구되는 하루입니다."
        case "April 22, 2018 / 뱀":
            self.resultLabel.text = "지혜와 덕을 고루 갖추었으니 스스로 자라는 나무의 형상입니다. 사방에서 많은 사람들이 당신에게 도움을 구하려 찾아오니 분주한 하루가 예상됩니다."
        case "April 22, 2018 / 말":
            self.resultLabel.text = "평소 잘 알고 지내던 사람에게 실망할 수 있습니다. 그러나 그것은 그 사람의 본심이 아니라 주위 환경과 사정에 의해 어쩔 수 없었던 점이 상당한 부분을 차지합니다."
        case "April 22, 2018 / 양":
            self.resultLabel.text = "마음이 평안한 하루입니다. 경제적으로는 그리 넉넉지 못하더라도 긍정적이고 낙관적인 생활 태도를 가지므로 대체로 순조로운 시기가 될 것입니다."
        case "April 22, 2018 / 원숭이":
            self.resultLabel.text = "지금까지 끊이지 않고 힘든 일만 일어났지만, 조금 더 참고 견뎌보십시오. 지금까지의 힘들었던 것들이 이제 곧 그 가치를 보상 받게 됩니다."
        case "April 22, 2018 / 닭":
            self.resultLabel.text = "지나친 욕심은 자제하라고 충고합니다. 그렇지 않아도 노력에 비해 결실이 적은 하루가 예상되므로 욕심은 더 큰 실망과 좌절만을 초래하기 쉽습니다."
        case "April 22, 2018 / 개":
            self.resultLabel.text = "낙관적인 결과를 기대하기에는 아직 이른 감이 있습니다. 무엇보다도 성급한 마음을 다스려야 할 것입니다. 과정이 생략된 결과란 없는 법이니까요."
        case "April 22, 2018 / 돼지":
            self.resultLabel.text = "이제까지 쌓아 온 것이 많습니다. 빛나는 성과를 거두지는 못했지만 적절한 시기를 만나면 풍년의 가을날 농부처럼 기대 이상의 기쁨을 수확할 수 있을 것입니다."
            
        default:
            self.resultLabel.text = "!운세!"
        }
    }
    
    // 날짜와~세요 버튼.
    @IBAction func fortuneButton() {
        let dateFormatter = DateFormatter()
        let zodiac: String = zodiacArray[self.zodiacPicker.selectedRow(inComponent: 0)]
        dateFormatter.dateStyle = .long
        
        selected = dateFormatter.string(from: self.datePicker.date) + " / " + zodiac
        self.selectedLabel.text = selected
        
        hiddenView.isHidden = false
        printResultLabel(selected: selected)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        hiddenView.isHidden = true
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
