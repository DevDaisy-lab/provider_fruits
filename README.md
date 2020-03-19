# provider_fruits

A Flutter app sample, **Provider Fruits**, shows a state management approach using **Provider** package. The app has two separate screens: a list of fruits and a cart. The list of fruits represented by **MyList** widget and the cart represented by **MyCart** widget. The list of fruits screen includes app bar (**MyAppBar**) and a scroling view of many fruit items (**MyFruitItem**). The cart screen includes list of added fruits (**CartList**) and total price os added fruits (**CartTotal**).

This is **a widget tree** of the **Provider Fruits** app:

![](https://github.com/Laura555-p/provider_fruits/blob/master/assets/images/widget_tree1.png)

# A Flutter app structure:

#lib/main.dart

Here a **MultiProvider** is used in order to provide both objects (in this case, **ListModel** and **CartModel**) at once to widget further down the tree.

