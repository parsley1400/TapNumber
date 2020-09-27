//
//  RankingViewController.swift
//  TapNumber
//
//  Created by risako takeya on 2020/09/23.
//  Copyright © 2020 Paseri Takeya. All rights reserved.
//

import UIKit

class RankingViewController: UIViewController {
    
    @IBOutlet var FirstLabel: UILabel!
    @IBOutlet var SecondLabel: UILabel!
    @IBOutlet var ThirdLabel: UILabel!
    
    var FirstScore: Int = 0
    var SecondScore: Int = 0
    var ThirdScore: Int = 0
    
    var newArray = [Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
//        newArray = saveScore.object(forKey: "score")
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
