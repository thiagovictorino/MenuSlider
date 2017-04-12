# MenuSlider

```swift
import UIKit
import MenuSlider

class ViewController: UIViewController, SideMenuDelegate {

	// Implementing var menu, coming from SideMenuDelegate Protocol
	var menu: SideMenuViewController!

	@IBAction func openMenu(_ sender: Any) {
		// call the menu method expand(*controller*) to open
		menu.expand(onController: self)
	}

	// Optionally function onMenuClose(), fired when user closes menu
	func onMenuClose() {
		print("Action on Close Menu")
	}

	// Optionally function onMenuClose(), fired when user open menu
	func onMenuOpen() {
		print("Action on Open Menu")
	}

	override func viewDidLoad() {
		super.viewDidLoad()

		// Creating a Menu Item with title string, with an action
		let menuItem1: SideMenuItem = SideMenuItemFactory.make(title: "Item Cell") {
			print("Action Cell")
		}

		// Creating a Menu Item with title string, without an action
		let menuItem2 = SideMenuItemFactory.make(title: "Item cell 2") {}

		// Creating a Menu Header with title string
		let menuheader = SideMenuHeaderFactory.make(title: "Header")

		let footerLabel = UILabel()
		footerLabel.text = "Footer"
		
		let footerView: UIView = UIView()
		footerView.addSubview(footerLabel)
		footerView.backgroundColor = UIColor.gray
		
		// Creating a Menu Footer with an UIView
		let menufooter = SideMenuFooterFactory.make(view: footerView)
		
		// Setting itens to the SideMenuViewController
		let menuBuild = SideMenu(menuItems: [menuItem1, menuItem2], header: menuheader, 
footer: menufooter)
		
		// Building the Menu SideMenuViewController
		self.menu = menuBuild.build()
		
		// Finally, setting self class for MenuController Delegate
		menu.delegate = self
	}

}
```
This example above will generate you this: 
![alt tag](http://imgur.com/Xep3Pwr)
