# Flutter BLoC State Management

A minimal, clean example of the BLoC pattern with [`flutter_bloc`](https://pub.dev/packages/flutter_bloc): UI sends events, the bloc emits new state, and the widget tree rebuilds only where it listens.

## Structure

```
lib/
├── main.dart                  # BlocProvider + BlocBuilder wiring and UI
└── bloc/
    ├── counter_bloc.dart      # CounterBloc: maps events to new states
    ├── counter_event.dart     # IncrementCounterEvent, DecrementCounterEvent
    └── counter_state.dart     # CounterState (holds the counter value)
```

## What it shows

- **`BlocProvider`** creates `CounterBloc` once and makes it available below `MyApp`
- **Events, not setState:** buttons dispatch `IncrementCounterEvent` / `DecrementCounterEvent` instead of mutating state directly
- **`BlocBuilder<CounterBloc, CounterState>`** rebuilds only the counter text when the state changes
- Business logic lives in the bloc, so it can be unit-tested without any widgets

## Tech

Flutter · Dart · flutter_bloc · Material 3

## Run it

```bash
flutter pub get
flutter run
```

---

Built by [Abubakar](https://www.linkedin.com/in/abubakar-aziz-flutter), Senior Flutter Engineer. I use BLoC in production apps such as [Field Force-AI](https://play.google.com/store/apps/details?id=com.fieldforce.ai) and [Deen Aor Duniya](https://play.google.com/store/apps/details?id=com.deenorduniya.app).
