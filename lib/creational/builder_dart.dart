// Product: Meal
class Meal {
  List<String> items = [];

  void addItem(String item) {
    items.add(item);
  }

  void showItems() {
    print('Meal items: ${items.join(', ')}');
  }
}

// Builder: MealBuilder
abstract class MealBuilder {
  void buildStarter();
  void buildMainCourse();
  void buildDessert();
  Meal getResult();
}

// ConcreteBuilder: VegMealBuilder
class VegMealBuilder implements MealBuilder {
  Meal meal = Meal();

  @override
  void buildStarter() {
    meal.addItem('Vegetarian Soup');
  }

  @override
  void buildMainCourse() {
    meal.addItem('Vegetarian Burger');
  }

  @override
  void buildDessert() {
    meal.addItem('Fruit Salad');
  }

  @override
  Meal getResult() {
    return meal;
  }
}

// ConcreteBuilder: NonVegMealBuilder
class NonVegMealBuilder implements MealBuilder {
  Meal meal = Meal();

  @override
  void buildStarter() {
    meal.addItem('Chicken Wings');
  }

  @override
  void buildMainCourse() {
    meal.addItem('Grilled Chicken');
  }

  @override
  void buildDessert() {
    meal.addItem('Chocolate Cake');
  }

  @override
  Meal getResult() {
    return meal;
  }
}

// Director: Waiter
class Waiter {
  late MealBuilder mealBuilder;

  void setMealBuilder(MealBuilder builder) {
    mealBuilder = builder;
  }

  Meal constructMeal() {
    mealBuilder.buildStarter();
    mealBuilder.buildMainCourse();
    mealBuilder.buildDessert();
    return mealBuilder.getResult();
  }
}

void main() {
  // Using the Builder Pattern to create a Vegetarian Meal
  Waiter waiter = Waiter();
  MealBuilder vegMealBuilder = VegMealBuilder();

  waiter.setMealBuilder(vegMealBuilder);
  Meal vegMeal = waiter.constructMeal();

  vegMeal.showItems();
  // Output: Meal items: Vegetarian Soup, Vegetarian Burger, Fruit Salad

  // Using the Builder Pattern to create a Non-Vegetarian Meal
  MealBuilder nonVegMealBuilder = NonVegMealBuilder();

  waiter.setMealBuilder(nonVegMealBuilder);
  Meal nonVegMeal = waiter.constructMeal();

  nonVegMeal.showItems();
  // Output: Meal items: Chicken Wings, Grilled Chicken, Chocolate Cake
}
