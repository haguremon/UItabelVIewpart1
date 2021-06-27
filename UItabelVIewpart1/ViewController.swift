//
//  ViewController.swift
//  UItabelVIewpart1
//
//  Created by IwasakIYuta on 2021/06/27.
//

import UIKit

class ViewController: UIViewController {

    private  var tabelView = UITableView()
    private var colors: [String] = ["red","greeeen","bule","cyan"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tabelView.dataSource = self
        tabelView.frame = view.bounds
        view.addSubview(tabelView)
    }


}
extension ViewController :UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = colors[indexPath.row]
        return cell
    }
    
    
}
