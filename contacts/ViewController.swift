//
//  ViewController.swift
//  contacts
//


import UIKit

class ViewController: UIViewController {

    
    var contact : Contact?
    
    let url = URL(string: "https://api.androidhive.info/contacts/")
    

    override func viewDidLoad() {
        super.viewDidLoad()
        loadAPI()
        // Do any additional setup after loading the view.
    }

    @IBAction func LoginPressed(_ sender: Any) {
        
        if contact == nil {
            return
        }
        performSegue(withIdentifier: "details", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! DetailsViewController
        vc.input = contact
    }
    
    func loadAPI() {
        URLSession.shared.dataTask(with: url!) {
            data, response, error in
            if let error = error {
                print(error)
                return
            }
            let data = try? JSONDecoder().decode(User.self, from: data!)
            self.contact = data!.contacts[0]
                        
        }.resume()
    }
    
    
    
}

