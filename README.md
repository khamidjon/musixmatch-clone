# musixmatch_clone

**Musixmatch Clone App.**

## Content

In this repository, we are going to build **Musixmatch Clone** application. This project will involve some best practices and tools.

The project:
- follows **Clean Architecture**  
- uses **Elementary** state management
- uses **go_router** for navigation
- **get_it, injectable** for dependency injection
- **dio, retrofit** for rest api handling
- **hive** for data storage
- **slang** for language handling

## Quick start

After cloning the repository you should:
- you can get started by using the Flutter version specified in
the [pubspec.yaml](pubspec.yaml) file and by running:

```
flutter packages pub run build_runner build --delete-conflicting-outputs
cd packages/imdb_localization && flutter pub get && flutter pub run slang && cd ../../
```
