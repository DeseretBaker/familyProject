//
//  ViewController.swift
//  familyProject
//
//  Created by Deseret Baker on 3/10/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var davidLabel: UIButton!
    @IBOutlet weak var dorineLabel: UIButton!
    @IBOutlet weak var deseretLabel: UIButton!
    @IBOutlet weak var delaineLabel: UIButton!
    @IBOutlet weak var josephLabel: UIButton!
    
        var familyMembers: [FamilyMember] = [
            FamilyMember(name: "David", image: UIImage(named: "David")!, age: 77, hobbies: "DIY, everything"),
            FamilyMember(name: "Dorine", image: UIImage(named: "Dorine")!, age: 86, hobbies: "Painting, puzzles"),
            FamilyMember(name: "Delaine", image: UIImage(named: "Delaine")!, age: 56, hobbies: "Dog Breeding"),
            FamilyMember(name: "Deseret", image: UIImage(named: "Deseret")!, age: 51, hobbies: "avid learner"),
            FamilyMember(name: "Joseph", image: UIImage(named: "Joseph")!, age: 65, hobbies: "World Traveler")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func buttonTapped(_ sender: UIButton) {
        guard let member = sender.titleLabel?.text,
              let selectedMember = familyMembers.first(where: { $0.name == member}) else {
            return
        }
        performSegue(withIdentifier: "ShowDetailView", sender: selectedMember)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDetailView",
           let selectedMember = sender as? FamilyMember,
           let detailVC = segue.destination as? DetailViewController {
                       detailVC.selectedMember = selectedMember
        }
    }
    
}
