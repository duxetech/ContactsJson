//
//  InfoViewController.swift
//  contacts
//


import UIKit

class InfoViewController: UIViewController {

    
    @IBOutlet var tableView: UITableView!
    
    var items = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    

  

}

extension InfoViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CotactCell
        cell.nameLabel.text = items[indexPath.row]
        return cell
        
    }
    
    
}
