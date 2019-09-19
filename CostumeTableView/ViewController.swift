//
//  ViewController.swift
//  CostumeTableView
//
//  Created by SSiOS on 9/19/19.
//  Copyright © 2019 SSiOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let stringArray = [String]()
    
    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var itemList: UITableView!
    @IBOutlet weak var buttonAdd: UIButton!
    
    
    @IBAction func addPressed(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stringArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTableViewCell", for: indexPath) as? ItemTableViewCell else {return UITableViewCell()}
        return cell
    }
    
    
}

