# ComponentsFramework

ComponentsFramework is a library that consists of Reusable UI components.

ComponentsFramework encapsulates:

- Fonts
- AmountTextView
- AccountTitleView
- RoundButton
- RoundedView
- AdvertisingView

## Installation

1. Keep the ComponentsFramework folder on the same directory level as your project where you need to use it

2. Add following line in your Pod file:

```python
pod 'ComponentsFramework', :path => '../ComponentsFramework'
```
3. Run 'pod install'

Note: Make sure to set the path correctly if ComponentsFramework is not in the same directory level.

## Usage

```python
import ComponentsFramework

@IBOutlet weak var amountTextView: AmountTextView!
```
## Design decisions

1. Not added @inspectable property(except for RoundButton as an example) because it could allow developers to change it in the interface. Ideally it makes it more maintainable, if all the configuration related code is at the same place.
2. The number formatting is based on system language of the phone. It is more likely to happen that the region is nl while the phone language is Eng, thus should respect the language user understands.

## License
[MIT](https://choosealicense.com/licenses/mit/)
