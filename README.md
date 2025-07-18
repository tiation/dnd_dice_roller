# D&D 5E Dice Roller

![Google Play](https://img.shields.io/badge/Google%20Play-Download-green.svg)
[Download](https://play.google.com/store/apps/details?id=com.dnd.dice.dnd_dice_roller)

A responsive Flutter application for rolling dice with customizable quick roll presets.

## Features

### Quick Roll Customization
- **Add New Presets**: Click the "+" button to add new quick roll presets
- **Edit Existing Presets**: Click the edit icon on any preset to modify it
- **Delete Presets**: Click the delete icon to remove unwanted presets
- **Drag-and-Drop Reordering**: Drag presets to reorder them according to your preference
  
![Screenshot](https://github.com/tiation/dnd_dice_roller/blob/main/Screenshot%20from%202025-07-15%2015-01-42.png?raw=true)

### Preset Configuration Fields
- **Name**: Description of the dice roll (e.g., "Attack Roll", "Damage")
- **Dice Count**: Number of dice to roll
- **Dice Sides**: Type of dice (d4, d6, d8, d10, d12, d20, d100)
- **Modifier**: Bonus or penalty to add to the roll
- **Icon/Emoji**: Visual identifier for the preset (e.g., ⚔️, 🎯, 🛡️)
- **Category**: Organization category (e.g., combat, skill, damage, weapon)
- **Color**: Visual theme color for the preset

### Data Model
All preset changes are stored in the application's data model using:
- **Unique IDs**: Each preset has a unique identifier for proper tracking
- **Sort Order**: Maintains custom ordering set by drag-and-drop
- **JSON Serialization**: Ready for persistence to local storage or cloud
- **Immutable Updates**: Uses copyWith pattern for safe state management

### User Interface
- **Responsive Design**: Adapts to mobile, tablet, and desktop screens
- **Intuitive Controls**: Easy-to-use edit and delete buttons
- **Visual Feedback**: Color-coded presets with emoji icons
- **Smooth Animations**: Fluid reordering and roll animations

## Play Store Information

### App Details
- **Google Play ID**: com.dnd.dice.dnd_dice_roller
- **Minimum Android Version**: API 21 - Android 5.0 (Lollipop)
- **Targeted Android Version**: API 33 - Android 13 (Tiramisu)
- **Content Rating**: Everyone
- **App Category**: Entertainment / Tools

### Key Features for Play Store
- In-app purchases and ad-free premium version
- Google Play Games integration for leaderboards
- Full support for Android tablets and landscape mode
- Optimized for material design and immersive user experience

### Publishing
The application is published using Google Play Console. Continuous integration and deployment (CI/CD) are set up to support automated testing and app delivery.

### Privacy and Compliance
Adheres to Google Play privacy requirements and includes a detailed privacy policy accessible within the app and Play Store listing.

### Graphics and Screenshots
- App icon designed for all resolutions
- Detailed screenshots for various device types
- Feature and promo graphics optimized for Play Store display

## Usage

1. **Adding a Preset**: Click the "+" button in the Quick Rolls section
2. **Editing a Preset**: Click the edit icon (✏️) on any existing preset
3. **Deleting a Preset**: Click the delete icon (🗑️) to remove a preset
4. **Reordering**: Long-press and drag presets to change their order
5. **Rolling**: Tap any preset to perform the dice roll

## Technical Implementation

### Data Model
- `DiceRoll` class with all necessary fields
- Factory constructors for easy creation
- Copy methods for immutable updates
- JSON serialization for persistence

### UI Components
- Reorderable list view for drag-and-drop functionality
- Modal dialogs for adding/editing presets
- Color picker for visual customization
- Form validation and error handling

### State Management
- Flutter's built-in setState for local state
- Proper disposal of controllers and animations
- Clean separation of concerns

## Development

```bash
# Run the application
flutter run

# Run on web
flutter run -d web-server --web-port 8081

# Build for production
flutter build web
```

## Enhanced Features

✅ **Persistent Storage**: All user data is now automatically saved using SharedPreferences
- Quick rolls and presets are preserved between app sessions
- Custom dice settings and selected categories are remembered
- Roll history is maintained across app restarts
- Automatic backup and restore functionality

✅ **Category Filtering**: Enhanced UI with category chips and dropdown filters
- Filter quick rolls by category (combat, skill, defense, damage, weapon)
- Visual category indicators with neon cyan theme
- Smooth category switching animations

✅ **Import/Export Support**: Built-in data management capabilities
- Export all presets and settings to JSON format
- Import configurations from backup files
- Data validation and error handling

## Storage Implementation

### SharedPreferences Integration
The app now uses SharedPreferences for persistent storage with the following benefits:
- **Automatic Saving**: All state changes are immediately persisted
- **Fast Loading**: Data is loaded asynchronously on app startup
- **Error Handling**: Graceful fallback to defaults if storage fails
- **Data Integrity**: JSON serialization ensures data consistency

### Storage Service Features
- Singleton pattern for efficient memory usage
- Separate storage for different data types (rolls, history, settings)
- Automatic cleanup of old roll history (keeps last 20 entries)
- Export/import functionality for data portability

### Data Structure
```json
{
  "version": "1.0.0",
  "exportDate": "2025-01-17T16:30:00Z",
  "quickRolls": [...],
  "rollHistory": [...],
  "settings": {
    "selectedCategory": "all",
    "selectedDice": 20,
    "diceCount": 1,
    "modifier": 0
  }
}
```

## Future Enhancements

- Advanced dice expressions (e.g., "3d6+2d4+5")
- Roll history with detailed statistics
- Cloud sync across devices (Firebase integration)
- Custom themes and color schemes
- Dice animation effects
- Sound effects for critical hits and fumbles
