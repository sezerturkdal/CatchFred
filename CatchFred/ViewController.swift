//
//  ViewController.swift
//  CatchFred
//
//  Created by Sezer on 6.07.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl_time: UILabel!
    @IBOutlet weak var lbl_score: UILabel!
    
    @IBOutlet weak var lbl_highScore: UILabel!
    @IBOutlet weak var fred1: UIImageView!
    @IBOutlet weak var fred2: UIImageView!
    @IBOutlet weak var fred3: UIImageView!
    @IBOutlet weak var fred4: UIImageView!
    @IBOutlet weak var fred5: UIImageView!
    @IBOutlet weak var fred6: UIImageView!
    @IBOutlet weak var fred7: UIImageView!
    @IBOutlet weak var fred8: UIImageView!
    @IBOutlet weak var fred9: UIImageView!
    
    var score=0
    var timer=Timer()
    var counter=10
    var showFredTimer=Timer()
    var lastRandomNumber=0
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        hideFreds()
        
        timer=Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(countDown), userInfo: nil, repeats: true)
        
        showFredTimer=Timer.scheduledTimer(timeInterval: 0.45, target: self, selector: #selector(showFred), userInfo: nil, repeats: true)


        addActionToImages()
    }
    
    @objc func countDown(){

            lbl_time.text="Time: \(counter)"
            counter-=1

            if counter<0{
                timer.invalidate()
                lbl_time.text="Time's up"
            }
        }
    
    func addActionToImages(){
        let tapGestureRecognizer1 = UITapGestureRecognizer(target: self, action: #selector(didImageClick(tapGestureRecognizer:)))
        
        let tapGestureRecognizer2 = UITapGestureRecognizer(target: self, action: #selector(didImageClick(tapGestureRecognizer:)))
        
        let tapGestureRecognizer3 = UITapGestureRecognizer(target: self, action: #selector(didImageClick(tapGestureRecognizer:)))
        
        let tapGestureRecognizer4 = UITapGestureRecognizer(target: self, action: #selector(didImageClick(tapGestureRecognizer:)))
        
        let tapGestureRecognizer5 = UITapGestureRecognizer(target: self, action: #selector(didImageClick(tapGestureRecognizer:)))
        
        let tapGestureRecognizer6 = UITapGestureRecognizer(target: self, action: #selector(didImageClick(tapGestureRecognizer:)))
        
        let tapGestureRecognizer7 = UITapGestureRecognizer(target: self, action: #selector(didImageClick(tapGestureRecognizer:)))
        
        let tapGestureRecognizer8 = UITapGestureRecognizer(target: self, action: #selector(didImageClick(tapGestureRecognizer:)))
        
        let tapGestureRecognizer9 = UITapGestureRecognizer(target: self, action: #selector(didImageClick(tapGestureRecognizer:)))
           
        fred1.isUserInteractionEnabled = true
        fred1.addGestureRecognizer(tapGestureRecognizer1)
        
        fred2.isUserInteractionEnabled = true
        fred2.addGestureRecognizer(tapGestureRecognizer2)
        
        fred3.isUserInteractionEnabled = true
        fred3.addGestureRecognizer(tapGestureRecognizer3)
        
        fred4.isUserInteractionEnabled = true
        fred4.addGestureRecognizer(tapGestureRecognizer4)
        
        fred5.isUserInteractionEnabled = true
        fred5.addGestureRecognizer(tapGestureRecognizer5)
        
        fred6.isUserInteractionEnabled = true
        fred6.addGestureRecognizer(tapGestureRecognizer6)
        
        fred7.isUserInteractionEnabled = true
        fred7.addGestureRecognizer(tapGestureRecognizer7)
        
        fred8.isUserInteractionEnabled = true
        fred8.addGestureRecognizer(tapGestureRecognizer8)
        
        fred9.isUserInteractionEnabled = true
        fred9.addGestureRecognizer(tapGestureRecognizer9)
    }
    
    
    @objc func didImageClick(tapGestureRecognizer: UITapGestureRecognizer){
        if counter<1{
            return
        }
        
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        print("Clicked: \(tappedImage.restorationIdentifier)")
        
        score+=1
        
        lbl_score.text="Score : \(score)"
    }
    
    @objc func showFred(){
        hideFreds()
        
        if counter<0{
            showFredTimer.invalidate()
        }
        
        var randomInt = Int.random(in: 1..<10)
        
        while(lastRandomNumber == randomInt){
            randomInt = Int.random(in: 1..<10)
        }
        lastRandomNumber=randomInt
        
        switch randomInt {
        case 1:
            fred1.isHidden=false
        case 2:
            fred2.isHidden=false
        case 3:
            fred3.isHidden=false
        case 4:
            fred4.isHidden=false
        case 5:
            fred5.isHidden=false
        case 6:
            fred6.isHidden=false
        case 7:
            fred7.isHidden=false
        case 8:
            fred8.isHidden=false
        case 9:
            fred9.isHidden=false
        default:
             break
        }
    }
    
    func hideFreds(){
        fred1.isHidden=true
        fred2.isHidden=true
        fred3.isHidden=true
        fred4.isHidden=true
        fred5.isHidden=true
        fred6.isHidden=true
        fred7.isHidden=true
        fred8.isHidden=true
        fred9.isHidden=true
    }


}

