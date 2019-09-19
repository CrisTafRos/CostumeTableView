//
//  ViewController.swift
//  CostumeTableView
//
//  Created by SSiOS on 9/19/19.
//  Copyright © 2019 SSiOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var stringArray = [String]()
    
    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var itemList: UITableView!
    @IBOutlet weak var buttonAdd: UIButton!
    
    
    @IBAction func addPressed(_ sender: UIButton) {
        if let text = textInput.text, !text.isEmpty{
            self.stringArray.insert(text, at: 0)
            itemList.beginUpdates()
            itemList.insertRows(at: [IndexPath(row: 0, section: 0)], with: .fade)
            itemList.endUpdates()
            
            textInput.text = nil
        }
    }
    
    @IBAction func deletePressed(_ sender: UIButton) {
        let point = sender.convert(CGPoint.zero, to: itemList)
        guard let indexPath = itemList.indexPathForRow(at: point) else {return}
        stringArray.remove(at: indexPath.row)
        itemList.beginUpdates()
        itemList.deleteRows(at: [IndexPath(row: indexPath.row, section: 0)], with: .fade)
        itemList.endUpdates()
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
        cell.labelContent.text = stringArray[indexPath.row]
        return cell
    }
    
    
}

