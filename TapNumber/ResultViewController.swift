//
//  ResultViewController.swift
//  TapNumber
//
//  Created by risako takeya on 2020/09/23.
//  Copyright © 2020 Paseri Takeya. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    
    var score: Int = 0
    var scoreArray = [Int]()
    
    let saveScore: UserDefaults = UserDefaults.standard

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        resultLabel.text = String(score) + "点"
        scoreArray.append(score)
        saveScore.set(scoreArray, forKey:"score")
    }
    
    @IBAction func back(){
        self.presentingViewController?.presentingViewController?.dismiss(animated: true, completion: nil)
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
