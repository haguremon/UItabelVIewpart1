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
        tabelView.delegate = self
    }


}
extension ViewController :UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = UITableViewCell()
       //dequeueReusableCellって取り出し可能な再利用可能せるって意味かな？
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") ??
                            UITableViewCell(style: .default, reuseIdentifier: "cell")
        cell.textLabel?.text = colors[indexPath.row]
        return cell
    }
}
//みんな大好きDelegateデザインパターン（イベント通知）
extension ViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        let alert = UIAlertController(title: "タイトル", message: color, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
    present(alert, animated: true, completion: nil)
    }
}
