//
//  FirstVC.swift
//  一周美食
//
//  Created by jgh on 16/7/22.
//  Copyright © 2016年 jgh. All rights reserved.
//

import UIKit

class FirstVC: UIViewController, UIPopoverPresentationControllerDelegate {

   
    @IBOutlet weak var cityBtn: UIButton!
    @IBOutlet weak var searchBtn: UIButton!
    @IBOutlet weak var scanBtn: UIButton!
    @IBOutlet weak var messageBtn: UIButton!
    @IBOutlet weak var FirstScrollV: FirstScrollV!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setNavBar()
        
        self.automaticallyAdjustsScrollViewInsets = false
        
        
    }
    func setNavBar()  {
        self.searchBtn.backgroundColor = UIColor.white()
        self.searchBtn.layer.cornerRadius = 12.0
        let width1 = self.cityBtn.frame.width
        let width2 = self.scanBtn.frame.width
        let width3 = self.messageBtn.frame.width
        self.searchBtn.frame.size.width = UIScreen.main().bounds.size.width - width1 - width2 - width3 - 50
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    @IBAction func search() {
    }
    
    @IBAction func scan(_ sender: AnyObject) {
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let pop = storyboard.instantiateViewController(withIdentifier: "ScanPopVC")
        pop.modalPresentationStyle = .popover
        pop.popoverPresentationController?.delegate = self
        pop.popoverPresentationController?.sourceView = sender as? UIView
        pop.popoverPresentationController?.sourceRect = sender.bounds
        pop.preferredContentSize = CGSize(width: 150, height: 84)
        pop.popoverPresentationController?.permittedArrowDirections = .up
        self.present(pop, animated: true, completion: nil)

    }
    
    
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
