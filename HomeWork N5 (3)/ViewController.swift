//
//  ViewController.swift
//  HomeWork N5 (3)
//
//  Created by Magdiel Altynbekov on 10/12/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    var orders: [Order] = [Order(image: "KFCimage", name: "Баскет L", descpription: "23 куриных крылышек", amount: "890сом")]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController:  UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "glovo", for: indexPath) as! TableViewCell
        
        cell.headName.text = orders[indexPath.row].name
        cell.imageKfc.image = UIImage(named:"\(orders[indexPath.row].image)")
        cell.info.text = orders[indexPath.row].descpription
        cell.price.text = orders[indexPath.row].amount
        
        return cell
    }
    
    
}
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 170
    }
}
