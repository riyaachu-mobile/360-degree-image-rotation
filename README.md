360° Rotation Flutter App

This Flutter application demonstrates a 360-degree rotation feature using GestureDetector, Clean Architecture, and GetX for state management. The app allows users to rotate an object dynamically by dragging on the screen.

Features

360° rotation using gesture detection

GetX for state management

Clean Architecture for modular and maintainable code

Responsive and adaptive UI for all screen sizes

Project Structure

lib/
│── core/                # Common utilities and base classes
│── data/                # Data sources, repositories
│── domain/              # Entities, UseCases
│── presentation/        # UI & Controllers (GetX)
│── main.dart            # Entry point

Dependencies

Add the following dependencies in pubspec.yaml:

dependencies:
  flutter:
    sdk: flutter
  get: ^4.6.6

Installation & Setup

Clone the repository

git clone https://github.com/riyaachu-mobile/360-degree-image-rotation.git