//
//  ViewController.swift
//  SuckItTrebek
//
//  Created by Ross Gottschalk on 9/2/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

import UIKit

protocol APIControllerProtocol
{
    func gotTheCategory(theCategory: [String: AnyObject])
}


class ViewController: UIViewController, APIControllerProtocol
{
    var theAPIController: APIController!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        theAPIController = APIController(delegate: self)
        theAPIController.getCategoryAPI()
        
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func gotTheCategory(theCategory: [String: AnyObject])
    {
        
    }

}

