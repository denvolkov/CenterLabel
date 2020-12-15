//
//  ViewController.swift
//  CenterLabel
//
//  Created by test on 11.12.2020.
//

import UIKit

class ViewController: UIViewController {
    
    let elementList = ["Honey", "Bee"]
    var currentElementIndex = 0
    
    let bankaSound = SimpleSound(name: "banka")
    let teatrSound = SimpleSound(name: "teatr")
    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
       
    }
    
    func updateElement() {
        
        answerLabel.text = "?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named:elementName)
        imageView.image = image
        teatrSound.play()
        
    }
    
    
    @IBAction func showAnswerButtinDidPressed(_ sender: UIButton) {
        answerLabel.text = elementList[currentElementIndex]
    }
    
    @IBAction func nextElementButtonDidPressed(_ sender: UIButton) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
           
            }
        
        updateElement()
    }
    
    @IBAction func soundButtonDidPressed(_ sender: UIButton) {
        bankaSound.play()

    }
}

