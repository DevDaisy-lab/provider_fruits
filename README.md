# provider_fruits

A Flutter app sample, **Provider Fruits**, shows a state management approach using the **Provider** package. The app has two separate screens: ***a list of fruits and a cart***. The list of fruits represented by **MyList** widget and the cart represented by **MyCart** widget. The list of fruits screen includes the app bar (**MyAppBar**) and a scrolling view of many fruit items (**MyFruitItem**). The cart screen includes a list of added fruits (**CartList**) and total price of added fruits (**CartTotal**).

This is **a widget tree** of the **Provider Fruits** app:

![](https://github.com/Laura555-p/provider_fruits/blob/master/assets/images/widget_tree1.png)

# A Flutter app structure:

# lib/main.dart

In order to track states of the object, they need to be provided to widget further down the tree.
Here a **MultiProvider** is used in order to provide both objects (in this case, **ListModel** and **CartModel**) at once to widget further down the tree.

The **ListModel** instance is provided using **Provider**, the **ListModel** never changes of a simple **Provider** here is fully enough.

The **CartModel** instance is provided using a **ChangeNotifierProxyProvider**, which combines two types of functionality:

1. It will automatically subscribe to changes in **CartModel** (if only this functionality is required simply to use **ChangeNotifierProvider**).
2. It takes the value of a previously provided object (in this case, **ListModel**), and uses it to build the value of **CartModel** (if only this functionality is required simply to use **ProxyProvider**).

# lib/models/*

This directory contains the model classes: **ListModel**, **CartModel** and an object **Fruit** skeleton. Two classes (In this case, **ListModel** and **CartModel**) are provided in the main.dart. These classes represent the app state.

# lib/screens/*

This directory contains the widgets (**MyList** and **MyCart**) used to construct the two screens of the app with other widgets: ***a list of fruits and a cart***.

# lib/widgets/*

This directory contains widgets (**MyAppBar**, **MyFruitItem**, **AddButton**, **CartList**, and **CartTotal**) used to construct the two screens of the app: ***a list of fruits and a cart***.

A widget **MyFruitItem** has access to the current state of the list of fruits (**ListModel**) via **Provider.of**.

The widgets **AddButton** and **CartList**, have access to the current state of the cart (**CartModel**) via **Provider.of**.

# lib/style/*

This directory contains of the app **Text Style:** ***fontFamily***, ***fontWeight***, ***fontSize*** and ***text color***.

# IOS Platform
<p align="left">
<img src="https://github.com/CodingFlutter/provider_fruits/blob/master/assets/images/1ios.png" width="300" height="600"/> 
<img src="https://github.com/CodingFlutter/provider_fruits/blob/master/assets/images/2ios.png" width="300"height="600"/> 
<img src="https://github.com/CodingFlutter/provider_fruits/blob/master/assets/images/3ios.png" width="300" height="600"/>
</p>

# Android Platform
<p align="left" >
<img src="https://github.com/CodingFlutter/provider_fruits/blob/master/assets/images/1a.png" width="250" height="580" hspace="40"/> 
<img src="https://github.com/CodingFlutter/provider_fruits/blob/master/assets/images/2a.png" width="250"height="580"/> 
<img src="https://github.com/CodingFlutter/provider_fruits/blob/master/assets/images/3a.png" width="250" height="580" hspace="40"/>
</p> 




