//
//  ViewController.swift
//  PocketPsychologist
//
//  Created by mozeX on 27.04.2023.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var mainTableView: UITableView!
    @IBOutlet weak var bannerView: UIView!
    
    var viewModel: MainViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
        bannerView.isHidden = true
  
    }
    
    private func configure() {
        mainTableView.delegate = self
        mainTableView.dataSource = self
        mainTableView.register(UINib(nibName: Cell.CellName.mainCellName, bundle: nil), forCellReuseIdentifier: Cell.CellId.mainCellId)
    }

    @IBAction func menuPressed(_ sender: UIButton) {
        viewModel.showMenu()
    }
}

//MARK: Table View Methods

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cell.CellId.mainCellId, for: indexPath) as! MainTableViewCell
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        viewModel.showSelectedCategory()
    }
    
}
