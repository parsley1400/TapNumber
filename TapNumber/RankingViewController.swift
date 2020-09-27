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
    
    let saveScore: UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        newArray = saveScore.object(forKey:"score") as! [Int]
        newArray.sort { $1 < $0 }
        
        print(newArray)
        
        if newArray.count >= 1{
            FirstScore = newArray[0]
            if newArray.count >= 2{
                SecondScore = newArray[1]
                if newArray.count >= 3{
                    ThirdScore = newArray[2]
                    
                }
            }
        }
        
        FirstLabel.text = String(FirstScore) + "点"
        SecondLabel.text = String(SecondScore) + "点"
        ThirdLabel.text = String(ThirdScore) + "点"
    }
    
    func push(){
        
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
