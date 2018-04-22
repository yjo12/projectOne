//
//  ViewController.swift
//  projectOne
//
//  Created by SWUCOMPUTER on 2018. 4. 17..
//  Copyright © 2018년 SWUCOMPUTER. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 새로운 scene이 push되기 전 미리 작업을 할 수 있도록 하는 prepare method
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segue, scene 이름 지정
        let destination = segue.destination
        let button = sender as! UIButton
        destination.title = button.titleLabel?.text
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

