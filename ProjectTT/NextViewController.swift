//
//  NextViewController.swift
//  ProjectTT
//
//  Created by Fujii Yuta on 2019/11/13.
//  Copyright © 2019 Fujii Yuta. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    var textString = String()
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = textString
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
