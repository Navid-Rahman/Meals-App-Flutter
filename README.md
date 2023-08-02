# Meals App
Meals App is a Flutter application that allows users to browse different categories of meals and view their recipes. Users can also filter meals based on their dietary preferences. This app serves as a basic example of using Flutter with Riverpod for state management.

## Screenshots
- Screenshot 1
  ![Simulator_Screenshot_-_iPhone_14_Pro_Max_-_2023-08-02_at_16 53 12_60](https://github.com/Navid-Rahman/Meals-App-Flutter/assets/77515075/88c0d1f4-9914-4886-af01-b731ebe185b6)

- Screenshot 2
  ![Simulator_Screenshot_-_iPhone_14_Pro_Max_-_2023-08-02_at_16 53 18_60](https://github.com/Navid-Rahman/Meals-App-Flutter/assets/77515075/50f3b8eb-8c45-46d2-ab34-aa554e3ee594)

- Screenshot 3
![Simulator_Screenshot_-_iPhone_14_Pro_Max_-_2023-08-02_at_16 53 46_60](https://github.com/Navid-Rahman/Meals-App-Flutter/assets/77515075/c16cfa02-91b7-4906-bdcf-0661cb852004)

- Screenshot 4
  ![Simulator_Screenshot_-_iPhone_14_Pro_Max_-_2023-08-02_at_16 54 01_60](https://github.com/Navid-Rahman/Meals-App-Flutter/assets/77515075/3e99935a-dfa4-4b35-9b04-c2a7933541cf)

- Screenshot 5
  ![Simulator_Screenshot_-_iPhone_14_Pro_Max_-_2023-08-02_at_17 00 50_60](https://github.com/Navid-Rahman/Meals-App-Flutter/assets/77515075/064a8013-eaee-4386-9da2-7e93a7602c93)



## Getting Started
To run this project, make sure you have Flutter installed on your system. Then, follow these steps:

1. Clone this repository.
``` git clone 'https://github.com/Navid-Rahman/Meals-App-Flutter.git' ```
2. Navigate to the project directory.
```cd meals_app```
3. Get the required dependencies.
```flutter pub get```
4. Run the app.
```flutter run```

## Features
- Browse different categories of meals.
- View detailed recipes for each meal.
- Filter meals based on dietary preferences.

## Code Overview
The project is organized into different files and folders:

- **lib/models**: Contains data models for Category, Meal, Complexity, and Affordability.
- **lib/provider**: Contains state management using Riverpod.
- **lib/widgets**: Contains custom widgets used in the app.
- **lib/data/dummy_data.dart**: Contains dummy data for categories and meals.
- **lib/main.dart**: The entry point of the app.

## Data Source
The app uses dummy data for demonstration purposes. In a real-world scenario, this data would typically be fetched from an API or database.

## State Management
The app uses Riverpod for state management, with the following providers:

- **favouriteMealsProvider**: Manages the list of user-favorite meals.
- **filtersProvider**: Manages the selected meal filters.
- **mealsProvider**: Provides the list of meals available in the app.
- **filteredMealProvider**: Provides the filtered list of meals based on the selected filters.

## Contributing
Contributions are welcome! If you find any bugs or have suggestions for improvements, please open an issue or submit a pull request.

## Acknowledgments
The Meals App is inspired by the Flutter Udemy course by Maximilian Schwarzmüller.

## Credits
The sample data used in the app is from MealsDB, an open-source database of meal recipes.

## Contact
For more information or questions, feel free to contact: navidrahman92@gmail.com
