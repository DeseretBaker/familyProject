//
//  DetailViewController.swift
//  familyProject
//
//  Created by Deseret Baker on 3/10/24.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var hobbiesLabel: UILabel!
    
    var selectedMember: FamilyMember?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let member = selectedMember {
            imageView.image = member.image 
            nameLabel.text = member.name
            ageLabel.text = "\(member.age)"
            hobbiesLabel.text = member.hobbies
        
            print("Selected family member: \(member)")
        }
    }
}
