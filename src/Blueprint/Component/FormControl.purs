module Blueprint.Component.FormControl where

import Prelude

import React

import Blueprint.Type

type FormControlsProps = FormControlsPropsEx ()

type FormControlsPropsEx r = PropsEx
  ( checked :: Boolean
  , defaultChecked :: Boolean
  , disabled :: Boolean
  , inputRef :: String  --  (ref: HTMLInputElement) => any;
  , label :: String
  , onChange :: String   -- React.FormEventHandler<HTMLInputElement>;
  , leftIconName :: String
  , placeholder :: String
  , rightElement :: UnknownEventType
  , _type :: String
  , rightElementWidth :: Number
  , allowNumericCharactersOnly :: Boolean
  , majorStepSize :: Number
  , max :: Number
  , min :: Number
  , minorStepSizen :: Number
  , stepSize :: Number
  , value :: ComponentORString
  , onValueChange ::  ComponentORString -> Unit -- (valueAsNumber: number, valueAsString: string): void;
  , name :: String
  , options :: String   -- IOptionProps[]
  , selectedValue :: String
  |r
  )