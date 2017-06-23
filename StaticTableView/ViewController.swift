//
//  ViewController.swift
//  StaticTableView
//
//  Created by Bansi Bhatt on 23/06/17.
//
//

import UIKit

class ViewController: UITableViewController {
    
    @IBOutlet weak var activityType: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func activityTypeOfUser(_ sender : UISwitch){
        if sender.isSelected == false{
            sender.isSelected = true
        }else{
            sender.isSelected = false
        }
        print("activity type ibaction : \(activityType.isSelected)")
    }
    
    //Alert method
    
    func addAlertController(){
        let alert = UIAlertController.init(title:nil, message: "Time Limits(in Minutes)", preferredStyle: .alert)
        
        alert.addTextField(configurationHandler: { (textField) in
            textField.placeholder = "Enter Time..."
        })
        
        let actionOK = UIAlertAction.init(title: "OK", style: .default, handler: { (alert) in
            //do stuff
        })
        
        let actionCancel = UIAlertAction.init(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(actionOK)
        alert.addAction(actionCancel)
        self.present(alert, animated: true, completion: nil)
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if(indexPath.section == 0){
            switch indexPath.row {
            case 0:
                addAlertController()
                break
                
            case 1:
                print("switch cell selected")
            default:
                print("Default")
                break
            }
            
        }else if(indexPath.section == 1){
            switch indexPath.row {
            case 0:
                let alert = UIAlertController.init(title:nil, message: "Add Email", preferredStyle: .actionSheet)
                
                
                let actionOK = UIAlertAction.init(title: "Create New", style: .default, handler: { (alert) in
                    //do stuff
                })
                
                let actionCancel = UIAlertAction.init(title: "Cancel", style: .cancel, handler: nil)
                alert.addAction(actionOK)
                alert.addAction(actionCancel)
                self.present(alert, animated: true, completion: nil)
                break
                
            case 1:
                print("DeActivate Email")
                break
            case 2:
                print("Logout")
                break
            case 3:
                print("Logout from all")
                break
            default:
                print("Default")
                break
            }
            
        }else{
            print("Go to Another view ")
            self.performSegue(withIdentifier: "DetailView", sender: self)
            print("last")
        }
    }
    
}

