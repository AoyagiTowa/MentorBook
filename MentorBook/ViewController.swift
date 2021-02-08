//
//  ViewController.swift
//  MentorBook
//
//  Created by Towa Aoyagi on 2021/02/08.
//

import UIKit

class ViewController: UIViewController {
    
    var mentorArray: [Mentor] = []

    @IBOutlet var courceLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var imageView: UIImageView!
    
    var index: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mentorArray.append(Mentor(name: "ながた", cource: "iPhone", imageName: "nagata.jpg"))
        mentorArray.append(Mentor(name: "りょう", cource: "Unity", imageName: "ryo.jpg"))
        mentorArray.append(Mentor(name: "たいてぃ", cource: "WebS,WebD", imageName: "taithi.jpg"))
        
        setUI()

        
        // Do any additional setup after loading the view.
    }
    
    func setUI() {
        imageView.image = mentorArray[index].getImage()
        nameLabel.text = mentorArray[index].name
        courceLabel.text = mentorArray[index].course
    }


    @IBAction func rightClick() {
        if index < 2 {
            index += 1
        }else{
            index = 0
        }
        setUI()
    }
    @IBAction func leftClick() {
        if index > 0 {
            index -= 1
        }else{
            index = 2
        }
        setUI()
    }
}

