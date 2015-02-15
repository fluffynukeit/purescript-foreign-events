-- This module defines the base event interface from which all events derive.

module Event where


_NONE = 0
_CAPTURING_PHASE = 1
_AT_TARGET = 2
_BUBBLING_PHASE = 3

foreign import data EventTarget :: *

type Event a = 
  { "type" :: String
  , target :: EventTarget
  , currentTarget :: EventTarget
  , eventPhase :: Number
  , bubbles :: Boolean
  , cancelable :: Boolean
  , timeStamp :: Number
  , defaultPrevented :: Boolean
  , isTrusted :: Boolean
  -- , stopPropagation ::
  -- , stopImmediatePropagation ::
  -- , preventDefault ::
  -- , initEvent ::
  |a
  }
