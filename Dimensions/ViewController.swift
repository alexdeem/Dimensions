//  Copyright © 2015 Alex Deem. All rights reserved.

import UIKit

class ViewController: UIViewController {

    var _label : UILabel?;
    
    override func loadView() {
        let view = UIView(frame: UIScreen.mainScreen().bounds);
        view.backgroundColor = UIColor.whiteColor();
        
        let label = UILabel();
        label.backgroundColor = UIColor.clearColor();
        label.font = UIFont.systemFontOfSize(50);
        label.textAlignment = NSTextAlignment.Center;
        view.addSubview(label);

        _label = label;
        self.view = view;
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews();
        let width = Int(view.bounds.size.width);
        let height = Int(view.bounds.size.height);
        if let label = _label {
            label.text = "\(width) x \(height)";
            label.frame = view.bounds;
        }
    }
    
}

