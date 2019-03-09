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
    @IBOutlet weak var backButton: UIButton!

    
    var imagePicker = UIImagePickerController()
    
    @IBAction func setAvatarButton(_ sender: Any) {
        print("Выбери изображение профиля")
        openImagePickerAlert()
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        // print(editDescriptionButton.frame)
        // в ините нет еще ui элементов, editDescriptionButton nil => фреймов тоже нет, ничего напечатать не выйдет
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(editDescriptionButton.frame)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Do any additional setup after loading the view, typically from a nib.
        let cornerRadius = setAvatarButton.frame.height / 2
        
        avatarImage.layer.cornerRadius = cornerRadius
        //avatarImage.layer.masksToBounds = true  //
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
        print(editDescriptionButton.frame)
        // Размеры разные, потому что в момент вызова viewDidLoad вьюшки еще не добавлены в иерархию отображения,
        // и значения берутся из сториборда, в котором сейчас висит 5й айфон =>
        // корректную информацию по размерам получить нельзя. А в viewDidAppear вьюшки уже добавлены в иерархию
        // для нужного девайса (например, iPhone X) => размеры указываются действительные
        // Из-за этого факта не стоит производить вычислений вьюх на основе из размеров во viewDidLoad
    }
}
