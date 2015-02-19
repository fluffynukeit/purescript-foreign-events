# Module Documentation

## Module Event

### Types

#### `Event`

    type Event a = { isTrusted :: Boolean, defaultPrevented :: Boolean, timeStamp :: Number, cancelable :: Boolean, bubbles :: Boolean, eventPhase :: Number, currentTarget :: EventTarget, target :: EventTarget, "type" :: String | a }

#### `EventTarget`

    data EventTarget :: *


## Module Event.UI

### Types

#### `CompositionEvent`

     === COMPOSITION EVENT ===

    type CompositionEvent a = UIEvent ("data" :: String | a)

#### `FocusEvent`

     === FOCUS EVENT ===

    type FocusEvent a = UIEvent (relatedTarget :: EventTarget | a)

#### `InputEvent`

     === INPUT EVENT ===

    type InputEvent a = UIEvent (isComposing :: Boolean, "data" :: String | a)

#### `KeyboardEvent`

    type KeyboardEvent a = UIEvent (shiftKey :: Boolean, repeat :: Boolean, metaKey :: Boolean, location :: Number, key :: String, isComposing :: Boolean, ctrlKey :: Boolean, code :: String, altKey :: Boolean | a)

#### `MouseEvent`

    type MouseEvent a = UIEvent (shiftKey :: Boolean, screenY :: Number, screenX :: Number, relatedTarget :: EventTarget, metaKey :: Boolean, ctrlKey :: Boolean, clientY :: Number, clientX :: Number, buttons :: Number, button :: Number, altKey :: Boolean | a)

#### `UIEvent`

    type UIEvent a = Event (view :: WindowProxy, detail :: Number | a)

#### `WheelEvent`

    type WheelEvent a = MouseEvent (deltaZ :: Number, deltaY :: Number, deltaX :: Number, deltaMode :: Number | a)

#### `WindowProxy`

     === UI EVENT ===

    data WindowProxy :: *



