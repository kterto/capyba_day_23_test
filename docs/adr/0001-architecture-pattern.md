# Architecture Pattern

- Status: accepted
- Deciders: Silas, Rodrigo e Kainã
- Date: 11/02/2021

## Context and Description

Choosing a pattern is paramount to mantain project consistency and health.

### Smaller Things

- Use AuthUsecase and ApiRepository as a unic object to acomplish the system requirement of overviewing all requests to the api and control navigation in case of a fatal comunication error with api (i.e. erros 401 and 410)

- Use the API whrapper in the view, since the api comunication state with the app can control navigation in a top level way (API.of(context))

- Create an interface to pass callbacks to the http wrapper, so that one can control common behaviour for all requests (i.e. 401 and 410)

- Alternative to the automatic navigation from NavigationObserver in a possible future usecase that needs to give a different user interface feedback in case of a error 401 or 410 (i.e. the interface to pass callbacks to the http wrapper)

## Considered Options

- Clean Architecture
- Clean Architecture Modified

## Decision Outcome

- Clean Architecture Modified

### OverView

We've started with three layers `Domain`, `Data` and `Presentation`. The `Domain` layer is the most stable one, and represents components of the system that define the business logic of application and are independent of other layers components. Initially this layer was thought to have `Usecase`s, `Entity`s, and `Repository Interface`s.
`Data` layer is the application outmost end, is the place where it comunicates with device's APIs, remote APIs, local dbs and so on. Initially it was thought to have `Repository implementation`s, `Model`s and `Datasource`s. `Presentation` layer is responsible for building the views to interact with the user and receive user's interaction incomes. This is the most framework dependent layer, it has a multiplicity of implemenatation options to follow. We've started with `View`s comunicating directly with `Usecase`s, then we went for `View`s that didn't comunicate with `Usecase`s directly, and instead we had `Controller`s that comunicate with `Usecase`s. Finally we've decided to follow a pattern with `SmartView`s, and `DummyView`s, both listening to state changes from the `Usecase` and emmiting events.

#### Domain

- `Entity`: Defines a fundamental object used in the application (Usually it models database data but without any concern with serialization or decerialization).
- `Usecase`: Responsible for holding the business logic of features and is independent from framework or any other layer.
- `Repository Interface`: Responsible for defining the contract usecases need to accomplish their goals.

#### Data

- `Repository Implementation`: It follows the contract defined in the `Domain` layer by its `Repository Interface`.
- `Model`: Defines the modeled object comming from a `Datasource` and deals with serialization and deserialization
- `Datasource`: The place where comunication with external world happens. (i.e. API requests, Local Storage)

#### Presentation

- `SmartView`: Coordinates the feature navigation, dialogs, toasts and snackbars, in response to `Usecase`s state changes.
- `DummyView`: responsible for display the visual elements and emmiting events to the `Usecase` in response to users interactions.

### Modifying The Initial Pattern

We've noticed that it has few to none advantages(At least in the beginning of the project) to keep some of the initially proposed architectural elements, once we had inittialy to many different parts and it could represent a early overengineering. With that in mind, it was decided that `Model`s and `Entity`s could be fused in an unic element responsible to model and de/serialize data from outside world. We've decided to keep the name `Entity`. Furthermore, we've decided that, for now, `Datasource`s and `Repository Interface`s are quite dispensable too, and the comunication can be made directly with wrappers(HttpWrapper, StorageWrapper) and `Repository`s.

At beginning, there was 8 to 9 architectural elements, and we've decided to keep 5 of them, by fusing different elements and their responsibility or just by deleting elements.

### Real Implementation

To materialize the architectural decisions and make it more useful to our team, we've started to choose flutter packages to suit our needs, following the philosofy of using as fewer third party packages as possible.

- To implement `Usecase`s as the Business LOgic Components of the application, we felt that the natural decision was the `Bloc` package [link]: https://pub.dev/packages/flutter_bloc, as it is a mature, robust, and well known solution for state management in `Flutter` context, and it is easy to test as well.

- To represent `Bloc` states and events, `Model`s, and deal with de/serialization, we've decided to use `Freezed` package [link]: https://pub.dev/packages/freezed, as it is a elegant and easy solution to implement sealed classes, union types and data classes as it is not available by default in `Dart`. It's based in code generation and it has ready-to-use integration with `Json_serializable` package [link]: https://pub.dev/packages/json_serializable.

- To deal with dependency injection we've decided to use a simple service locator `GetIt` [link]: and define a simple set of rule-of-thumbs to keep consistency over projects development and mantaince lifecycles. Rule-of-Thumbs:

  `--` if a class depends on another, it must be passed at instanciation by constructor and the instance control should be made by the service locator.

  `--` dependency injection setup for a module/feature should be split in each feature (each feature/module will contain its own file explicitly defining its dependency injection setup).

  `--` service locator shoudn't ever be referenced in a place other than a constructor call.

- To deal with internacionalization we've decided to use pure Object Oriented Programming, and keep all Strings of the application as static constants of an implementation of an abstract class to be defined.

- To deal with navigation we've decided to use the `Flutter`s native `Navigator`, as it poses as a complete solution, even though, not the most practical or elegant one.

- To deal with http requests we've decided to use `Dio` package [link]:https://pub.dev/packages/dio as it is a better option than the native `Flutter` solultion presenting good features like Interceptors, BaseUrl and is a well known and popular solution.

- To persist sensitive local data we've decided to use the package `flutter_secure_storage` [link]: https://pub.dev/packages/flutter_secure_storage. It is a popular and performatic solution.

- We've defined helper classes/types to deal with the Result of requests (Abstract generic `Result` class that is implemented by a `Success` and a `Failure`), the errors (Abstract `AppError` that is implemented in each relevant particular error type) throgh the app and Forms (using the `Maybe` type). They can be found in the `shared` folder.
