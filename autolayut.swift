
// Stevia

class LoginViewStevia:UIView {

    let email = UITextField()
    let password = UITextField()
    let login = UIButton()

    convenience init() {
        self.init(frame:CGRectZero)
        backgroundColor = .whiteColor()

        sv([
            email.placeholder("Email").style(fieldStyle), //.style(emailFieldStyle),
            password.placeholder("Password").style(fieldStyle).style(passwordFieldStyle),
            login.text("Login").style(buttonSytle).tap(loginTapped)
        ])

        layout([
            100,
            |-email-| ~ 80,
            8,
            |-password-| ~ 80,
            "",
            |login| ~ 80,
            0
        ])
    }

    func fieldStyle(f:UITextField) {
        f.borderStyle = .RoundedRect
        f.font = UIFont(name: "HelveticaNeue-Light", size: 26)
        f.returnKeyType = .Next
    }

    func passwordFieldStyle(f:UITextField) {
        f.secureTextEntry = true
        f.returnKeyType = .Done
    }

    func buttonSytle(b:UIButton) {
        b.backgroundColor = .lightGrayColor()
    }

    func loginTapped() {
        //Do something
    }
}

// Snapkit

import SnapKit

class MyViewController: UIViewController {

    lazy var box = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(box)
        box.snp_makeConstraints { (make) -> Void in
           make.width.height.equalTo(50)
           make.center.equalTo(self.view)
        }
    }

}

// ObjC - Masonry
    [box mas_makeConstraints:^(MASConstraintMaker* make) {
        make.width.height.equalTo(50);
        make.center.equalTo(self.view);    
    }];
