//
//  ViewController.swift
//  groceryList
//
//  Created by God on 9/24/19.
//  Copyright © 2019 God. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var groceryList = [GroceryList]()
    
    @IBOutlet weak var groceryName: UITextField!
    
    @IBOutlet weak var groceryPrice: UITextField!
    
    @IBOutlet weak var grocTableView: UITableView!
    
    @IBAction func removeItem(_ sender: UIButton) {
        groceryList.removeLast()
        grocTableView.reloadData()
    }
    @IBAction func addNewItem(_ sender: UIButton) {
        var newGrocery = GroceryList()
        newGrocery.name = groceryName.text!
//        newGrocery.price = groceryPrice.text! as! Double
        groceryList.append(newGrocery)
        grocTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        grocTableView.reloadData()
        grocTableView.dataSource = self
        grocTableView.delegate = self
        // Do any additional setup after loading the view.
    }


}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groceryList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var groceryItem = groceryList[indexPath.row]
        var cell = grocTableView.dequeueReusableCell(withIdentifier: "groceryCell", for: indexPath) as? groceryCell
            cell?.groceryName.text = groceryItem.name
        cell?.groceryPrice.text = "\(groceryItem.price)"
            return cell!
        
        
    }
    
    
}

