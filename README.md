# recipe_app

Recipes Flutter App.

## Best Practices
I'm trying to follow best practices recommended by Android team:
- [Architecture](https://developer.android.com/topic/architecture/recommendations): several Architect best practices and recommendation to improve app's quality, robustness, and scalability. They also make it easier to maintain and test the app.

This application use Clean Architecture as a main architecture.
For more information about Clean Architecture, please visit: 
[The Clean Architecture from Clean Coder's blog](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html).

It has three main modules:
- [presentation](https://github.com/tungthanh0316/recipe_app/tree/main/lib/presentation): display the application data on the screen and also to serve as the primary point of user interaction. Inside this module, I used [BloC] pattern as a state management of this app, it makes views and business logic more separately, easier for testing and expanding our feature. 
- [domain](https://github.com/tungthanh0316/recipe_app/tree/main/lib/domain): encapsulate complex business logic that is reused by multiple BloC. It provides the following benefits
    - Avoids code duplication.
    - Improves readability in classes that use domain layer classes.
    - Improves the testability of the app.
    - Avoids large classes by allowing you to split responsibilities.
- [data](https://github.com/tungthanh0316/recipe_app/tree/main/lib/data): the data layer contains application data. It is made of repositories that each can contain zero to many data sources. You should create a repository class for each different type of data you handle in the app.
- And a [common](https://github.com/tungthanh0316/recipe_app/tree/main/lib/common) module (not a main module) contains some configs and extensions of the app, and we can use it everywhere.

I also add 36 linter rules - what we should follow to make our code improve readability.
Also added Localization for a scalable application.

Video demo:[Google drive](https://drive.google.com/file/d/1YLEZjknm_ZRIUWq4QEfcQhAg1jue_dLB/view?usp=sharing)

