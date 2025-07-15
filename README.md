# D&D 5E Dice Roller

A responsive Flutter application for rolling dice with customizable quick roll presets.

## Features

### Quick Roll Customization
- **Add New Presets**: Click the "+" button to add new quick roll presets
- **Edit Existing Presets**: Click the edit icon on any preset to modify it
- **Delete Presets**: Click the delete icon to remove unwanted presets
- **Drag-and-Drop Reordering**: Drag presets to reorder them according to your preference

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

## Future Enhancements

- Persistent storage (SharedPreferences or database)
- Import/export preset configurations
- Preset categories and filtering
- Advanced dice expressions (e.g., "3d6+2d4+5")
- Roll history with statistics
- Cloud sync across devices
