-- This module defines the interface for all UIEvents and children.
-- w3.org/TR/DOM-Level-3-Events/#events-uievents

module Event.UI where

import Event

-- === UI EVENT ===

foreign import data WindowProxy :: *

type UIEvent a = Event
  ( detail :: Number
  , view :: WindowProxy 
  |a
  )

-- === FOCUS EVENT ===

type FocusEvent a = UIEvent
  ( relatedTarget :: EventTarget
  | a
  )

-- === MOUSE EVENT ===

_MOUSE_NONE = 0
_MOUSE_PRIMARY = 1
_MOUSE_SECONDARY = 2
_MOUSE_AUXILIARY = 4

type MouseEvent a = UIEvent
  ( altKey :: Boolean
  , button :: Number
  , buttons :: Number
  , clientX :: Number
  , clientY :: Number
  , ctrlKey :: Boolean
  , metaKey :: Boolean
  , relatedTarget :: EventTarget
  , screenX :: Number
  , screenY :: Number
  , shiftKey :: Boolean
  | a
  )


-- === WHEEL EVENT ===

_WHEEL_DOM_DELTA_LINE = 0
_WHEEL_DOM_DELTA_PAGE = 1
_WHEEL_DOM_DELTA_PIXEL = 2

type WheelEvent a = MouseEvent
  ( deltaMode :: Number
  , deltaX :: Number
  , deltaY :: Number
  , deltaZ :: Number
  | a
  )

-- === INPUT EVENT ===

type InputEvent a = UIEvent
  ( "data" :: String
  , isComposing :: Boolean
  |a
  )

-- === KEYBOARD EVENT ===

_DOM_KEY_LOCATION_STANDARD = 0
_DOM_KEY_LOCATION_LEFT = 1
_DOM_KEY_LOCATION_RIGHT = 2
_DOM_KEY_LOCATION_NUMPAD = 3

type KeyboardEvent a = UIEvent
  ( altKey :: Boolean
  , code :: String
  , ctrlKey :: Boolean
  , isComposing :: Boolean
  , key :: String
  , location :: Number
  , metaKey :: Boolean
  , repeat :: Boolean
  , shiftKey :: Boolean
  |a
  )

-- === COMPOSITION EVENT ===

type CompositionEvent a = UIEvent
  ( "data" :: String
  |a
  )




