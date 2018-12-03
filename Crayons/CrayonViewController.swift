//
//  ViewController.swift
//  Crayons
//
//  Created by Alyson Abril on 12/3/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class CrayonViewController: UIViewController {
    
    private var crayons = Crayon.allTheCrayons
    
    @IBOutlet weak var crayonTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
      crayonTableView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = crayonTableView.indexPathForSelectedRow,
            let crayonDetailController = segue.destination as?
            CrayonDetailViewController
            else { fatalError("no bueno") }
        let crayon = crayons[indexPath.row]
        crayonDetailController.crayon = crayon
    }
}


extension CrayonViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return crayons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CrayonCell", for: indexPath)
        let crayon = crayons[indexPath.row]
        cell.textLabel?.text = crayon.name
        cell.detailTextLabel?.text = crayon.hex
        cell.backgroundColor = crayon.color()
        return cell
    }
}
