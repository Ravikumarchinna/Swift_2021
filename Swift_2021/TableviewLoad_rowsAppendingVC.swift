//
//  TableviewLoad_rowsAppendingVC.swift
//  Swift_2021
//
//  Created by Ravikumar on 6/23/21.
//

import UIKit

// https://stackoverflow.com/questions/41750134/uitableview-load-more-data-when-scrolling-to-top

class TableviewLoad_rowsAppendingVC: UIViewController {
    
    @IBOutlet weak var tblv_data: UITableView!
    private  var loaderMoreView:UIView = {
        
        let loaderView = UIActivityIndicatorView(style: .medium)
        loaderView.color = UIColor.gray
        loaderView.startAnimating()
        return loaderView
    }()
    
    
    var allUsers = [String](repeating: "User", count: 50)
    var dataSource = [String]()
    var nextoffest = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.addElements()
        
        #if DEV
        print("Development")
        #else

        print("QA")

        #endif
        
    
    }
    
    func addElements() {
        let newOffset = nextoffest+10
        let aryCount = allUsers.count
        if aryCount < newOffset {
            let  result = newOffset - aryCount
            for k in nextoffest..<nextoffest+result {
                dataSource.append(allUsers[k])
            }
        }
        else{
            for k in nextoffest..<newOffset {
                dataSource.append(allUsers[k])
            }
            nextoffest = newOffset
        }
    }
    
    func addData() {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            self.addElements()
            self.tblv_data .reloadData()
        }
    }
    func setUpLoaderView(toShow:Bool) {
        if toShow{
            self.tblv_data.tableFooterView?.isHidden = false
            self.tblv_data.tableFooterView = self.loaderMoreView
        }
        else{
            self.tblv_data.tableFooterView = UIView()
        }
    }
}

extension TableviewLoad_rowsAppendingVC:UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(dataSource[indexPath.row]) : \(indexPath.row)"
        return cell

    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        let currentCount = self.dataSource.count
        if currentCount < 50 && indexPath.row == currentCount - 1 {
            self.addData()
            self.setUpLoaderView(toShow: true)
        }
        else{
            self.setUpLoaderView(toShow: false)
        }
    }
}
