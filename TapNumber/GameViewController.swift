//
//  GameViewController.swift
//  TapNumber
//
//  Created by risako takeya on 2020/09/23.
//  Copyright © 2020 Paseri Takeya. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    
    @IBOutlet var tapButton1: UIButton!
    @IBOutlet var tapButton2: UIButton!
    @IBOutlet var tapButton3: UIButton!
    @IBOutlet var tapButton4: UIButton!
    @IBOutlet var tapButton5: UIButton!
    @IBOutlet var tapButton6: UIButton!
    @IBOutlet var tapButton7: UIButton!
    @IBOutlet var tapButton8: UIButton!
    @IBOutlet var tapButton9: UIButton!
    
    var count: Float = 15.00
    var timer: Timer = Timer()
    var score: Int = 0
    var numberArray = ["1","2","3","4","5","6","7","8","9"]
    var collectArray = ["1","2","3","4","5","6","7","8","9"]
    var myArrayNumber: Int = 0
    var collect: Bool!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        timer = Timer.scheduledTimer(timeInterval: 0.01,
                                     target: self,
                                     selector: #selector(self.down),
                                     userInfo: nil,
                                     repeats: true)
        
        setNumber()
        
    }
    
    @objc func down(){
        count -= 0.01
        countLabel.text = String(format: "%.2f", count) + "秒"
        
        if count <= 0.00{
            timer.invalidate()
            performSegueToResult()
        }
    }
    
    func shuffle(){
        numberArray.shuffle()
    }
    
    func setNumber(){
        shuffle()
        
        tapButton1.setTitle(numberArray[0], for: .normal)
        tapButton2.setTitle(numberArray[1], for: .normal)
        tapButton3.setTitle(numberArray[2], for: .normal)
        tapButton4.setTitle(numberArray[3], for: .normal)
        tapButton5.setTitle(numberArray[4], for: .normal)
        tapButton6.setTitle(numberArray[5], for: .normal)
        tapButton7.setTitle(numberArray[6], for: .normal)
        tapButton8.setTitle(numberArray[7], for: .normal)
        tapButton9.setTitle(numberArray[8], for: .normal)
        
        collectArray = ["1","2","3","4","5","6","7","8","9"]
    }
    
    func check(){
        if collectArray[0] == numberArray[myArrayNumber]{
            collect = true
            score += 10
            scoreLabel.text = String(score) + "点"
            collectArray.remove(at: 0)
        }else{
            collect = false
        }
    }
    
    func again(){
        if collectArray.count == 0{
            setNumber()
        }
    }
    
    @IBAction func tapNumber1(){
        myArrayNumber = 0
        check()
        if collect == true{
            tapButton1.setTitle(" ", for: .normal)
        }
        again()
    }
    
    @IBAction func tapNumber2(){
        myArrayNumber = 1
        check()
        if collect == true{
            tapButton2.setTitle(" ", for: .normal)
        }
        again()
    }
    
    @IBAction func tapNumber3(){
        myArrayNumber = 2
        check()
        if collect == true{
            tapButton3.setTitle(" ", for: .normal)
        }
        again()
    }
    
    @IBAction func tapNumber4(){
        myArrayNumber = 3
        check()
        if collect == true{
            tapButton4.setTitle(" ", for: .normal)
        }
        again()
    }
    
    @IBAction func tapNumber5(){
        myArrayNumber = 4
        check()
        if collect == true{
            tapButton5.setTitle(" ", for: .normal)
        }
        again()
    }
    
    @IBAction func tapNumber6(){
        myArrayNumber = 5
        check()
        if collect == true{
            tapButton6.setTitle(" ", for: .normal)
        }
        again()
    }
    
    @IBAction func tapNumber7(){
        myArrayNumber = 6
        check()
        if collect == true{
            tapButton7.setTitle(" ", for: .normal)
        }
        again()
    }
    
    @IBAction func tapNumber8(){
        myArrayNumber = 7
        check()
        if collect == true{
            tapButton8.setTitle(" ", for: .normal)
        }
        again()
    }
    
    @IBAction func tapNumber9(){
        myArrayNumber = 8
        check()
        if collect == true{
            tapButton9.setTitle(" ", for: .normal)
        }
        again()
    }
    
    func performSegueToResult(){
        performSegue(withIdentifier: "toResultView", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if segue.identifier == "toResultView"{
            let resultViewController = segue.destination as! ResultViewController
            resultViewController.score = self.score
        }
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
