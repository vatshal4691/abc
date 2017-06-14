//
//  ViewController.swift
//  Calculator
//
//  Created by pankaj kumar on 11/04/1938 Saka.
//  Copyright © 1938 Saka pankaj kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var brand: UILabel!
    @IBOutlet weak var screen: UITextField!
    
 
    var  a:Float! , b:Float!, c:Float!,d:Float!
    var optr:Int!
    var rslt:String!
    var div:String!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func zero(_ sender: AnyObject)  {
        
        if screen.text == nil{
            screen.text = screen.text!+"0"
        }
        else {
            screen.text = screen.text!+"0"
            c = 0
        }}
    
        @IBAction func point(_ sender: AnyObject) {
            
            if screen.text == nil{
                screen.text = screen.text!+"."
            }
            else {
                screen.text = screen.text!+"."
                
            }

            
        }
     
    
    @IBAction func one(_ sender: AnyObject) {
        
        if screen.text == nil{
            screen.text = screen.text!+"1"
        }
        else {
            screen.text = screen.text!+"1"
            c = 1
        }
        
    }
    
    @IBAction func eight(_ sender: AnyObject) {
        if screen.text == nil{
            screen.text = screen.text!+"8"
        }
        else {
            screen.text = screen.text!+"8"
            c = 8
        }
    }
    @IBAction func three(_ sender: AnyObject) {
        if screen.text == nil{
            screen.text = screen.text!+"3"
        }
        else {
            screen.text = screen.text!+"3"
            c = 3
        }

    }

    @IBAction func nine(_ sender: AnyObject) {
        if screen.text == nil{
            screen.text = screen.text!+"9"
        }
        else {
            screen.text = screen.text!+"9"
            c = 9
        }
    }
    @IBAction func seven(_ sender: AnyObject) {
        if screen.text == nil{
            screen.text = screen.text!+"7"
        }
        else {
            screen.text = screen.text!+"7"
            c = 7
        }
    }
    @IBAction func five(_ sender: AnyObject) {
        if screen.text == nil{
            screen.text = screen.text!+"5"
        }
        else {
            screen.text = screen.text!+"5"
            c = 5
        }
        

    }
    @IBAction func six(_ sender: AnyObject) {
        if screen.text == nil{
            screen.text = screen.text!+"6"
        }
        else {
            screen.text = screen.text!+"6"
            c = 6
        }
    }
    @IBAction func four(_ sender: AnyObject) {
        if screen.text == nil{
            screen.text = screen.text!+"4"
        }
        else {
            screen.text = screen.text!+"4"
            c = 4
        }
       }
    @IBAction func two(_ sender: AnyObject) {
        if screen.text == nil{
            screen.text = screen.text!+"2"
        }
        else {
            screen.text = screen.text!+"2"
            c = 2
        }    }
    
    @IBAction func add(_ sender: AnyObject) {
        optr = 1
        screen.text = screen.text! + "+"
        div = screen.text!.substring(to: screen.text!.characters.index(before: screen.text!.endIndex))
        d = Float(div)
              }
    @IBAction func divide(_ sender: AnyObject) {
           optr = 2
        screen.text = screen.text! + "/"
        div = screen.text!.substring(to: screen.text!.characters.index(before: screen.text!.endIndex))
        d = Float(div)
    }
    @IBAction func multiply(_ sender: AnyObject) {
        optr = 3
        screen.text = screen.text! + "*"
        div = screen.text!.substring(to: screen.text!.characters.index(before: screen.text!.endIndex))
        d = Float(div)

       
    }
    @IBAction func subtract(_ sender: AnyObject) {
         optr = 4
        screen.text = screen.text! + "-"
        div = screen.text!.substring(to: screen.text!.characters.index(before: screen.text!.endIndex))
        d = Float(div)
    }
    


    @IBAction func result(_ sender: AnyObject) {
        switch(optr){
            
        case 1:b =  d + c
                screen.text = String(b)
        case 4: b = d - c
                      screen.text = String(b)
        case 3: b = d * c
                         screen.text = String(b)
        case 2: b = d / c
                     screen.text = String(b)
            
        default:     screen.text = "Error"
        
        }
    
        
        
    }
    
    @IBAction func backspace(_ sender: AnyObject) {
         screen.text = screen.text!.substring(to: screen.text!.characters.index(before: screen.text!.endIndex))
 
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

