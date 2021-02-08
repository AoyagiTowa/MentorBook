//
//  Mentor.swift
//  MentorBook
//
//  Created by Towa Aoyagi on 2021/02/08.
//

import UIKit

class Mentor {
    var name: String!
    var course: String!
    var imageView: String!
    
    init(name: String, cource: String, imageName: String) {
        self.name = name
        self.imageView = imageName
        self.course = cource
    }
    func getImage() -> UIImage {
        return UIImage(named: imageView)!
    }
}
