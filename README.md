# AutoLayoutFitures

Working with constraints in different applications. Pay attention only in auto layout and constraints.

## What I have done

![Finished App](https://github.com/ParkhomenkoAlexey/Images/blob/master/Steve%20Jobs.png) 
![Finished App](https://github.com/ParkhomenkoAlexey/Images/blob/master/Foody%20App.png)

## Where you can find it

First screenshot project you can find if you clone/download my commit "Steve Jobs projet". 

Second screenshot project you can find if you clone/download my last commit "Foody App".


## NSLayoutAnchor, NSLayoutConstraint, Visual Format Language

I Also worked with constrainst programmatically using NSLayoutAnchor, NSLayoutConstraint, Visual Format Language. Here you can see simple example of using NSLayoutAnchor to fix 3 squares in the screen. 

![Finished App](https://github.com/ParkhomenkoAlexey/Images/blob/master/NSLayoutAnchor.png)

Firstly create colored squares
```
let viewRed: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false 
        view.backgroundColor = UIColor.red
        return view
    }()
    
    let viewBlue: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false 
        view.backgroundColor = UIColor.blue
        return view
    }()
    
    let viewGreen: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false 
        view.backgroundColor = UIColor.green
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(viewRed)
        view.addSubview(viewBlue)
        view.addSubview(viewGreen)
        
        createViewRedConstraint()
        createViewBlueConstraint()
        createViewGreenConstraint()
    }
    
    func createViewRedConstraint() {
        viewRed.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        viewRed.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true 
        viewRed.heightAnchor.constraint(equalToConstant: 100).isActive = true
        viewRed.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func createViewBlueConstraint() {
        viewBlue.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20).isActive = true
        viewBlue.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1/3).isActive = true view
        viewBlue.heightAnchor.constraint(equalToConstant: 100).isActive = true
        viewBlue.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func createViewGreenConstraint() {
        viewGreen.rightAnchor.constraint(equalTo: viewBlue.rightAnchor).isActive = true
        viewGreen.leftAnchor.constraint(equalTo: viewRed.leftAnchor).isActive = true 
        viewGreen.bottomAnchor.constraint(equalTo: viewRed.topAnchor, constant: -20).isActive = true
        viewGreen.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
    }
```

I do the same job by using NSLayoutConstraint and Visual Format Language, you can find it in this project in the first commits.

## ParkhomenkoAlexey

See more [ParkhomenkoAlexey](https://github.com/ParkhomenkoAlexey).
