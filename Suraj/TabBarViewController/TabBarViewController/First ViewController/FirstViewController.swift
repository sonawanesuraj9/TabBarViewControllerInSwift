//
//  FirstViewController.swift
//  TabBarViewController
//
//  Created by Suraj MAC2 on 2/16/16.
//  Copyright © 2016 supraint. All rights reserved.
//

import UIKit

class RecipesTableViewCell : UITableViewCell{
    
    @IBOutlet weak var lblRecipeName: UILabel!
}

class FirstViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    
    
    //Generals
    let recipeArray : [String] = ["Shaking Beef","Spiny Lobster In Crazy Water ","Ugly But Good Hazelnut Cookies","Wacky Chocolate Cake","Festive Nuts","Super 'Shrooms","Spam Sushi","Anything Rice","Pink Cuts","Aloo methi","Amritsari fish","Biryani","Chapathi"]
    //Controlls
    
    //Let's Play
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
       // self.navigationController?.navigationBar.barStyle = .Black
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    //UITableViewDatasource Methods Implementation
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
      return recipeArray.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
      let cell = tableView.dequeueReusableCellWithIdentifier("cellID", forIndexPath: indexPath) as! RecipesTableViewCell
        cell.lblRecipeName.text = recipeArray[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let VC = self.storyboard?.instantiateViewControllerWithIdentifier("idRecipeTableViewController") as! RecipeTableViewController
        self.navigationController?.pushViewController(VC, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
