//
//  APIController.swift
//  SuckItTrebek
//
//  Created by Ross Gottschalk on 9/2/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

import Foundation

class APIController
{
    init(delegate: APIControllerProtocol)
    {
        self.delegate = delegate
    }
    
    
    var delegate: APIControllerProtocol!
    
    
    func getCategoryAPI() -> [[String: AnyObject]]
    {
        var getACategory = [[String: AnyObject]]()
        
        let firstURL = NSURL(string: "http://jservice.io/api/category?id=1")
        let firstRequest = NSURLRequest(URL: firstURL!)
        let firstTask = NSURLSession.sharedSession().dataTaskWithRequest(firstRequest)
        {
            data, response, error in
            if error != nil
            {
                print("error=\(error)")
                return
            }
            // You can print out response object
            print("data = \(data)")
            // Print out response body
            if let responseString = NSString(data: data!, encoding: NSUTF8StringEncoding)
            {
                print("responseString = \(responseString)")
                do {
                    let myJSON =  try NSJSONSerialization.JSONObjectWithData(data!, options: .MutableContainers) as? NSArray
               
                    
                    for aQuestion in myJSON
                    {
                        let theQuestion = getACategory(dictionary: )
                    }
                    
                    
                    
//                    if let parseJSON = myJSON {
//                    
//                        for i in 0..<parseJSON.count
//                        {
//                            let categoryDict = parseJSON[i]
//                            getACategory.append(categoryDict as! [String : AnyObject])
//                            //let aCategory = CategoryClass(dictionary: categoryDict  as! [String : AnyObject])
//                            //getACategory.append(aCategory)
//                        }
                        //self.delegate.gotTheCategory(getACategory)
   //                 }
                    
                } catch {
                    print(error)
                }
            }

        }
        
        
        firstTask.resume()
        
        print(getACategory)
        return getACategory
        
    }

}