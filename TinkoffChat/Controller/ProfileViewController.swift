//
//  ViewController.swift
//  TinkoffChat
//
//  Created by n.kuznetsov on 28/02/2019.
//  Copyright © 2019 n.kuznetsov. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
 
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var setAvatarButton: UIButton!
    @IBOutlet weak var editDescriptionButton: UIButton!
    @IBAction func setAvatarButton(_ sender: Any) {
        print("Выбери изображение профиля")
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let cornerRadius = setAvatarButton.frame.height / 2
        
        avatarImage.layer.cornerRadius = cornerRadius
        //avatarImage.layer.masksToBounds = true
        avatarImage.clipsToBounds = true
        
        let insetsValue: CGFloat = 20
        setAvatarButton.imageEdgeInsets = UIEdgeInsets(top: insetsValue, left: insetsValue, bottom: insetsValue, right: insetsValue)
        setAvatarButton.layer.cornerRadius = cornerRadius
        
        editDescriptionButton.layer.cornerRadius = editDescriptionButton.frame.height / 5
        editDescriptionButton.layer.borderWidth = 1.0
        editDescriptionButton.layer.borderColor = UIColor.black.cgColor
        editDescriptionButton.layer.backgroundColor = UIColor.white.cgColor
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}
