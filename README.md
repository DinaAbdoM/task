# task
A high-performance Flutter mobile application for advanced searching and filtering of service providers and companies. Built with Clean Architecture principles to ensure scalability, testability, and maintainability.
Features

Advanced Filtering System: Filter results by city, provider type (Person/Office), and multiple service subcategories using an intuitive chip-based selection interface
Dynamic Search: Real-time text search integrated seamlessly with filtering logic
Flexible View Modes: Toggle between Grid and List views for optimal browsing experience
Infinite Scroll Pagination: Automatic loading of additional results as users scroll
Robust State Management: Dedicated handling for loading, error, and empty states
Responsive Design: Optimized UI across different screen sizes and devices

Architecture
This project follows Clean Architecture principles with clear separation of concerns across three main layers:
Core Layer
Houses shared, reusable components:

Networking: API configuration (api_service.dart, dio_factory.dart)
Error Handling: Custom failure classes (failures.dart)
Theming: Centralized styles, colors, and typography
Dependency Injection: Service locator setup (dependency_injection.dart)

Features Layer
Organized by feature modules (e.g., Search/Filter):

Data Layer: API models, DTOs, and repository implementations
Domain Layer: Business entities, repository contracts, and use cases
Presentation Layer: State management (Cubit/Bloc) and UI components

Technology Stack
TechnologyPurposeFlutter/DartCross-platform mobile frameworkflutter_bloc/cubitState managementDio/RetrofitHTTP client and type-safe REST APIfreezed/json_annotationImmutable models and JSON serializationflutter_screenutilResponsive UI scalingdartzFunctional programming (Either type for error handling)
API Integration
Base URL: https://olivedrab-manatee-515331.hostingersite.com/api
Endpoints
EndpointMethodDescription/citiesGETRetrieves list of available cities/sub-categoreιςGETFetches service subcategories/filter-companiesPOSTExecutes search/filter query with multipart form data
# Project Structure
lib/
├── core/
│   ├── networking/
│   ├── error/
│   ├── theming/
│   └── di/
└── features/
        ├── data/
        ├── domain/
        └── presentation/
## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
