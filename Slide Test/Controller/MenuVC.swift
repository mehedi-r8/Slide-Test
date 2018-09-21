//
//  MenuVC.swift
//  Slide Test
//
//  Created by MEHEDI.R8 on 9/20/18.
//  Copyright © 2018 mehedi.r8. All rights reserved.
//

import UIKit

class MenuVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    let item: [String] = ["name", "UI", "map"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 100
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return item.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? MenuCell
        cell?.name.text = item[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell:MenuCell = tableView.cellForRow(at: indexPath) as! MenuCell
        if cell.name.text == "name" {
            performSegue(withIdentifier: "lol", sender: nil)
        } else if cell.name.text == "map"{
            performSegue(withIdentifier: "new", sender: nil)
        }
    }
}
