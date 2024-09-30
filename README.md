# Cards-Memory

**Cards-Memory** is an application designed to assist card players in tracking and remembering the cards in their opponents' hands. The app provides danger warnings for critical situations to help players make strategic decisions during gameplay.

## Features

- **Track Opponent Cards**: Easily monitor the cards held by your opponents.
- **Danger Warnings**: Receive alerts when opponents have high-ranking cards such as pairs, straights, or special hands.
- **User-Friendly Interface**: Designed for easy interaction and efficient card management.

## Getting Started

### Prerequisites

To run the project, make sure you have the following:
- [Flutter SDK](https://docs.flutter.dev/get-started/install) (version 3.22.2)
- [FVM](https://fvm.app/) for managing Flutter versions

### Installation

1. Clone the repository:

    ```bash
    git clone https://github.com/your-username/cards-memory.git
    cd cards-memory
    ```

2. Install the required packages:

    ```bash
    fvm flutter pub get
    ```

3. Before running the application, build the necessary files with build_runner:

    ```bash
    fvm flutter pub run build_runner build --delete-conflicting-outputs
    ```

### Running the App

To start the app, use the following command:

```bash
fvm flutter run
