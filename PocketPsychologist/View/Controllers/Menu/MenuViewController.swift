//
//  MenuViewController.swift
//  PocketPsychologist
//
//  Created by mozeX on 30.04.2023.
//

import UIKit

class MenuViewController: UIViewController {

    @IBOutlet weak var menuTableView: UITableView!
    
    var viewModel: MenuViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()

    }
    
    private func configure() {
        
        menuTableView.delegate = self
        menuTableView.dataSource = self
        menuTableView.register(UINib(nibName: Cell.CellName.menuCellName, bundle: nil), forCellReuseIdentifier: Cell.CellId.menuCellId)
    }

}

extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cell.CellId.menuCellId, for: indexPath) as! MenuTableViewCell
        return cell
    }
    
}
