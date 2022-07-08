//
//  TelaTableView.swift
//  CadastroUsuarios
//
//  Created by user208023 on 4/29/22.
//

import UIKit


class TelaTableView: UIViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    var userList: [Usuario] = []
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        
        self.myTableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "TableViewCell")
        
    }
   
}
extension TelaTableView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.userList.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let labelCell: TableViewCell? = myTableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell
        
        labelCell?.setup(value: self.userList[indexPath.row])
        
        return labelCell ?? UITableViewCell()
    }
    
}
