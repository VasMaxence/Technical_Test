# Test technique - Linxo

***(english version bellow)***

## 1. Étude des solutons

La première étape du projet a été de prendre la demande, la décortiqué et la diviser en plusieurs items techniques.
Ce qui a donné :

- Récupération des données depuis l'API (avec pagination)
- Stockage des données en local si elles ne sont pas déjà existantes
- Priorité de récupération des données : Locale puis API
- Affichage des données

Une fois cela fait, j'ai pu étudié les données qui sont renvoyés par l'API afin de savoir quelles sont les données que je devaient récupérer + préparer les modèles.

J'ai également pu préparer une rapide graphique de la façon dont l'application devait procéder (algorigramme).

## 2. Mise en place du projet

Une fois que j'avais l'étude technique, je pouvais préparer le projet et son architecture. Adepte de l'architecture MVVM (avec Riverpod) je suis cette fois partie sur l'architecture BLoC.

J'ai donc commencé par créer la class qui servait de coeur de l'application: `UserListBloc` ainsi que les models de données: `UserListState` et `UserModel`.

J'ai également importé une petite librairie personnelle afin d'améliorer la syntaxe du code.

## 3. Récupération des données (online / local)

L'archtecture de l'application étant en place, je passais à la récupération des données. Dans un premier temps j'ai du récupérer les données depuis l'API de RandomUser.
J'ai pour cela utilisé le package `Retrofit`:

```dart
@RestApi(baseUrl: 'https://randomuser.me/api/')
abstract class RestRandomUserApi {
  factory RestRandomUserApi(Dio dio, {String baseUrl}) = _RestRandomUserApi;

  @GET("?page{page}&results={number}")
  Future<UserModelResponse> getUsers(@Path() String page, @Path() String number);
}
```

Cela me permettait de récupérer les données depuis les événements BLoC.

Une fois récupérer, je devais stocké les données en locale afin de permettre à l'application de ne pas avoir à charger les données lors du prochain lancement (sauf si aucune données n'étaient dans le cache). J'ai alors utilisé le package `Hive`.

À chaque nouvelle donnée récupérer j'ajoutais les données à la bdd Hive, sauf si celle-ci était déjà stocké.

Une fois les données récupérer et stocké en local, le `UserListBloc` n'avait plus qu'à les récupérer de façon optimisé. Lors de sa création il pouvait récupérer toutes les données locales et les affichait dans une `ListView`. Si aucune donnée n'était en local, nous allions récupérer 30 utilisateurs depuis l'API afin de créer un scroll de base.

Afin de faire un chargement optimisé, j'ai configuré un event sur le `ScrollController`, à chaque fois qu'on arrivait à la fin du scroll, on envoi un événement au BLoC afin que ce dernier récupère plus d'informations depuis l'API.

## 4. Mise en place de l'UI

J'ai fini par ajouter une très légère couche graphique, afin de rendre l'application un peu plus intéressante.

## 5. Remarques

Vous pourrez retrouver la présence d'un router du package `AutoRouter` dans le projet, celui-ci n'est cependant pas utilisé. N'ayant eu l'utilité de mettre en place une application complète avec du responsif + un routing complexe, je suis et ai finalisé le test avec le `Navigator.of()` stadard.

-------------

# Technical Test - Linxo

## 1. Solution Analysis

The first step of the project was to take the request, break it down, and divide it into several technical items. This resulted in:

- Retrieval of data from the API (with pagination)
- Local data storage if it doesn't already exist
- Data retrieval priority: Local first, then API
- Display of the data

Once this was done, I could study the data returned by the API to determine which data I needed to retrieve to setup the needed models.

I also prepared a quick graph of how the application should proceed (flowchart).

## 2. Project Setup

With the technical study completed, I could prepare the projets deliveable and its architecture. Although I usually follow the MVVM architecture (with Riverpod), this time I chose the BLoC architecture.

I started by creating the class that served as the core of the application: `UserListBloc`, as well as the data models: `UserListState` and `UserModel`.

I also imported a small personal library to improve code syntax.

## 3. Data Retrieval (Online / Local)

With the application's architecture in place, I moved on to retrieving the data. Initially, I had to fetch the data from the RandomUser API. I achieved this using the `Retrofit` package:

dart

```dart
@RestApi(baseUrl: 'https://randomuser.me/api/')
abstract class RestRandomUserApi {
  factory RestRandomUserApi(Dio dio, {String baseUrl}) = _RestRandomUserApi;

  @GET("?page{page}&results={number}")
  Future<UserModelResponse> getUsers(@Path() String page, @Path() String number);
}
```

This allowed me to retrieve data from the BLoC events.

Once retrieved, I needed to store the data locally to avoid loading the data on each application launch (unless no data was in the cache). For this purpose, I used the `Hive` package.

For each new piece of data retrieved, I added it to the Hive database, unless it was already stored.

With the data retrieved and stored locally, the `UserListBloc` only needed to fetch the data in an optimized manner. Upon creation, it could retrieve all the local data and display it in a `ListView`. If no data was available locally, we would fetch 30 users from the API to create a basic scroll.

To achieve optimized loading, I configured an event on the `ScrollController`. Whenever we reached the end of the scroll, an event was sent to the BLoC to retrieve more information from the API.

## 4. UI Implementation

Finally, I added a very light graphical layer to able to visualize the retrieved data of the used BLoC state, thus making the application a bit more interesting for the user.

## 5. Notes

You will find the presence of a router from the `AutoRouter` package in the project, but it is not utilized. As I did not need to implement a complete responsive application with complex routing, I completed the test using the standard `Navigator.of()`.
