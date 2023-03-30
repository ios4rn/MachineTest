//
//  Home.swift
//  Machine Test
//
//  Created by Rabin on 29/03/23.
//

import UIKit
import Kingfisher

class Home: UIViewController {
    
    var mod = [Model]()

    @IBOutlet weak var btnLogout: UIButton!
    @IBOutlet weak var tblVout: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
      calling()
     
    }
    func calling() {
        ApiCalling.api.getFunctions(url: "https://picsum.photos/v2/list") { [self] resp, isSucc, message in
            if isSucc == true {
                if let data = resp {
//                    print(data)
                    
                    do{
                        let json = try JSONSerialization.jsonObject(with: data,options: [])
//                        print(json)
                        if let value = json as? [[String:Any]]{
                            for i in value{
                                mod.append(Model(fromdata: i))
                                print(i)
                            }
                            tblVout.reloadData()
                        }
                    }catch{
                        print("err")
                    }
                    
                }
            }
        }
    }
    
    @IBAction func btnLogout(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
   

}
extension Home: UITableViewDelegate,UITableViewDataSource{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mod.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblVout.dequeueReusableCell(withIdentifier: "Tblcll", for: indexPath) as! Tblcll
        
        cell.imgV.layer.borderColor = UIColor.systemGray5.cgColor
        cell.imgV.layer.borderWidth = 1.5
        
        cell.imgV.layer.shadowRadius = 3.0
        cell.imgV.layer.shadowColor = UIColor.black.cgColor
        cell.imgV.layer.shadowOffset = CGSizeMake(1.0, 1.0)
        cell.imgV.layer.shadowOpacity = 1.0
        
        cell.imgV.layer.cornerRadius = 10
        
        cell.CllView.layer.cornerRadius = 8
//        cell.CllView.layer.borderWidth = 1
//        cell.CllView.layer.borderColor = UIColor.black.cgColor
//
        cell.imgV.kf.setImage(with: URL(string: mod[indexPath.row].download_url ?? ""))
        cell.lblAuthor.text = mod[indexPath.row].author ?? ""
        cell.lblId.text = "\(mod[indexPath.row].id ?? "")"
        cell.lblUrl.text = mod[indexPath.row].url ?? ""
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 190
    }
    
    
}
