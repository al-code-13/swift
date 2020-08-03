//
//  UIButtonExtension.swift
//  ButtonEffectsExtension
//
//  Created by Alejo Muñoz on 16/07/20.
//  Copyright © 2020 alcode. All rights reserved.
//

import UIKit

extension UIButton {
    
    // Borde redondo
    func round() {
        //layer.cornerRadius = bounds.height / 2
        layer.cornerRadius = 10
        clipsToBounds = true
    }
    
    //MARK: - Animaciones
    
    //Rebote
    
    func bounce(){
        UIView.animate(withDuration: 0.1, animations: {
            self.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
        }){(completion) in
            UIView.animate(withDuration: 0.1, animations:  {
                self.transform = .identity
            })
            
        }
    }
    
    // Brillar
    
    func shime(){
        UIView.animate(withDuration: 0.1, animations: {
            self.alpha = 0.5
        }){(completion) in
            UIView.animate(withDuration: 0.1, animations:  {
                self.alpha = 1               })
            
        }
    }
    
    // Salta
    
    func jump(){
        UIView.animate(withDuration: 0.1, animations: {
            self.transform = CGAffineTransform(translationX: 10, y: 0)
        }){(completion) in
            UIView.animate(withDuration: 0.1, animations:  {
                self.transform = .identity
            })
            
        }
    }
}
