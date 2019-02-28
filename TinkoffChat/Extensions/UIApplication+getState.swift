//
//  UIApplication+getState.swift
//  TinkoffChat
//
//  Created by n.kuznetsov on 28/02/2019.
//  Copyright © 2019 n.kuznetsov. All rights reserved.
//

import UIKit


extension UIApplication {
    func getState() -> String {
        switch self.applicationState {
        case .active:
            return "active"
            
        case .inactive:
            return "inactive"
            
        case .background:
            return "background"
        }
    }
}
