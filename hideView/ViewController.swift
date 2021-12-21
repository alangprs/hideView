//
//  ViewController.swift
//  hideView
//
//  Created by will on 2021/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var itemImage: UIImageView!
    @IBOutlet weak var itemNameLabel: UILabel!
    @IBOutlet weak var ditelTextLabel: UILabel!
    @IBOutlet weak var exchangeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hideItem()
        takePhoto()
    }
    
    ///偵測截圖動作
    func takePhoto() {
        NotificationCenter.default.addObserver(self, selector: #selector(didTakeScreenshot(notification:)), name: UIApplication.userDidTakeScreenshotNotification, object: nil)
    }
    @objc func didTakeScreenshot(notification:Notification) -> Void {
        print("Screen Shot Taken")
    }
    
    
    ///截圖隱藏物件
    func hideItem() {
        itemImage.makeSecure()
        itemNameLabel.makeSecure()
        ditelTextLabel.makeSecure()
        exchangeButton.makeSecure()
    
    }
}

   

