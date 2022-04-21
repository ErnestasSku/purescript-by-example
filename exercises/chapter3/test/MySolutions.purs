module Test.MySolutions where

import Data.AddressBook
import Data.Maybe
import Data.List
import Prelude

-- Note to reader: Add your solutions to this file

findEntryByStreet :: String -> AddressBook -> Maybe Entry
findEntryByStreet st = head <<< filter filterStreets
    where
        filterStreets :: Entry -> Boolean
        filterStreets book = book.address.street == st

isInBook :: String -> String -> AddressBook -> Boolean
isInBook fname lname = not null <<< filter filterByNameLastName
    where
        filterByNameLastName a = a.firstName == fname && a.lastName == lname 

removeDuplicates :: AddressBook -> AddressBook
removeDuplicates = nubByEq dup
    where
        dup :: Entry -> Entry -> Boolean
        dup e1 e2 = e1.firstName == e2.firstName && e1.lastName == e2.lastName