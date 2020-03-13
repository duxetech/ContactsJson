//
//  DetailsViewController.swift
//  contacts
//


import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    
    @IBOutlet var mailLabel: UILabel!
    
    @IBOutlet var genderLabel: UILabel!
    
    var input : Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard  let input = input else {
            return
        }
        nameLabel.text = input.name
        mailLabel.text = input.email
        genderLabel.text = input.gender

        // Do any additional setup after loading the view.
    }
    

    @IBAction func NextPressed(_ sender: Any) {
        performSegue(withIdentifier: "info", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! InfoViewController
        vc.items.append (input.email)
    }
    
}
