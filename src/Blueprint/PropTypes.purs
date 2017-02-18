module Blueprint.PropTypes where

import Prelude (negate)

type UnknownStyleType = {}

type UnknownEventType = {}

type UnknownRefType = {}

type UnknownReactType = {}

type UnknownJSXElementType = {}

type UnknownFunctionType = {} -- () => void;

type Prop a = a -> a

newtype Intent = Intent Int

-- DISCUSS: do we want to use / access these values as intent.none, intent.primary or just none, primary?
intent ::
  { none :: Intent
  , primary :: Intent
  , success :: Intent
  , warning :: Intent
  , danger :: Intent
  }
intent =
  { none : Intent (-1)
  , primary : Intent 0
  , success : Intent 1
  , warning : Intent 2
  , danger : Intent 3
  }

-- TODO: Lets discard using prefix of I. I was used in TypeScript as a way to specify Interface!
-- DISCUSS: I think r here is not necessary?
type Prpos r = PropsEx ()

-- DISCUSS: Do we need this to be extensible?
type PropsEx r = { className :: String | r }

type IntentProps = IntentPropsEx ()

type IntentPropsEx r = { intent :: Intent | r }

type ActionProps = ActionPropsEx ()

type ActionPropsEx r =
  { disabled :: Boolean
  , iconName :: String
  , onClick :: UnknownEventType
  , text :: String
  , intent :: Intent
  , className :: String
  | r
  }

type LinkProps = LinkPropsEx ()

type LinkPropsEx r =
  { href :: String
  , target :: String
  | r
  }

data ComponentORString
  = String
  | UnknownJSXElementType

type TetherConstraint =
  { attachment :: String
  , outOfBoundsClass :: String
  , pin :: ComponentORString -- Boolean | Array String
  , pinnedClass :: String
  , to :: ComponentORString --- String | UnknownReactType | Array Int
  }