# provider_fruits

A Flutter app sample, **Provider Fruits**, shows a state management approach using **Provider** package. The app has two separate screens: a list of fruits and a cart. The list of fruits represented by **MyList** widget and the cart represented by **MyCart** widget. The list of fruits screen includes app bar (**MyAppBar**) and a scroling view of many fruit items (**MyFruitItem**). The cart screen includes list of added fruits (**CartList**) and total price os added fruits (**CartTotal**).

This is **a widget tree** of the **Provider Fruits** app:

![](https://github.com/Laura555-p/provider_fruits/blob/master/assets/images/widget_tree1.png)

# A Flutter app structure:

# lib/main.dart

In order to track states of the object, they need to be provided to widget further down the tree.
Here a **MultiProvider** is used in order to provide both objects (in this case, **ListModel** and **CartModel**) at once to widget further down the tree.

The **ListModel** instance is provided using **Provider**, the **ListModel** never changes so a simple **Provider** here is fully enough.

The **CartModel** instance is provided using a **ChangeNotifierProxyProvider**, which combines two types of functionality:

1. It will automatically subscribe to changes in **CartModel** (if only this functionality is required simply use **ChangeNotifierProvider**).
2. It takes the value of a previously provided object (in this case, **ListModel**), and uses it to build the value of **CartModel** (if only this functionality is reiguired simply use **ProxyProvider**).

# list/models/*

This directory contains the model classes: **ListModel**, **CartModel** and an object **Fruit** skeleton. Two classes (In this case, **ListModel** and **CartModel**) are provided in the main.dart. These classes represents the app state.




