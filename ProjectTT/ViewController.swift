//
//  ViewController.swift
//  TeamProject
//
//  Created by Fujii Yuta on 2019/11/13.
//  Copyright © 2019 Fujii Yuta. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var indexNumber = Int()
    

   
    var stationArray = ["渋谷","新宿","恵比寿","五反田","高輪ゲートウェイ"]
    //近藤さん・・・TableViewを作成し、配列に5つの要素を追加し、cell.labelに表示してください。セルをタップしたときに画面遷移をID nextでlabel.textを値を渡しながら遷移させてください。画面遷移先はNextViewControllerです。
        //また、遷移先で受け取る変数名はtextStringです。
    
    
    //藤井・・・受け取った値をラベルに表示します。
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //20191118　近藤記入１
        
        tableView.delegate = self
        tableView.dataSource = self
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stationArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "next", for: indexPath)
        
        let stationLabel = cell.contentView.viewWithTag(1) as! UILabel
        stationLabel.text = self.stationArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        indexNumber = indexPath.row
        
        performSegue(withIdentifier: "next", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let nextVC = segue.destination as! NextViewController
        
        nextVC.textString = stationArray[indexNumber]
    }

}

