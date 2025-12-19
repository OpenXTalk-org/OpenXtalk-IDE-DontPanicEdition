script "ws.goulding.script-library.mergjson"

on revLoadLibrary
   if the target is not me then
      pass revLoadLibrary
   end if

   insert the script of me into back

   if the environment contains "development" then
      set the _ideoverride of me to true
   end if
end revLoadLibrary

on revUnloadLibrary
   if the target is not me then
      pass revUnloadLibrary
   end if

   remove the script of me from back
end revUnloadLibrary

/**

The mergJSON external itself can not parse JSON to and from
multi-dimensional arrays. This is achieved through `JSONToArray`
and `ArrayToJSON` script functions provided in this library. The
implementations in this library are intented to be generally useful
in addition to providing a basis for implementations focussed on
edge cases such as `ArrayToJSON` that forces a known element to be an
object.

*/

/**

Parse JSON to a xTalk array

Example:
local tProfile
put url "https://graph.facebook.com/me" into tProfile
if the result begins with "error" then
   -- handle error
else
   put JSONToArray(tProfile) into tProfile
   -- do something interesting with the profile
end if

Parameters:
pJSON (string): A UTF8 encoded JSON string

Returns: A xTalk array

Description:
JSON arrays are translated to numerically indexed arrays
with keys 1...N and JSON objects are translated to xTalk array
key -> value pairs.

*/

function JSONToArray pJSON
   local tArray,tRecurse, tKeys

   put mergJSONDecode(pJSON,"tArray") into tRecurse
   if tArray is an array then
      put the keys of tArray into tKeys

      split tRecurse by return as set
      repeat for each line tKey in tKeys
         if tRecurse[tKey] then
            put JSONToArray(tArray[tKey]) into tArray[tKey]
         else
            put textDecode(tArray[tKey],"UTF8") into tArray[tKey]
         end if
      end repeat

      return tArray
   else
      return textDecode(tArray,"UTF8")
   end if
end JSONToArray

/**

Parse a xTalk array to JSON

Example:
local tMessage
ask question "What do you want to send?"
if it is not empty then
   put it into tMessage["text"]
   put ArrayToJSON(tMessage) into tMessage

   set the httpHeaders to "Content-type: application/json"
   post tMessage to url kSlackWebhookURL
end if

Parameters:
pArray (array): A xTalk array
pForceRootType (optional enum): Force an element value to be represented
as a JSON type other than the default

- "object" - force an object even if the array has numeric 1...N keys
- "string" - force a string even if the element value parses as a number or boolean

Returns: A UTF8 encoded JSON string

Description:
By default numerically indexed arrays with keys 1...N are
translated to JSON arrays and array key -> value pairs are
translated to JSON objects.

*/

function ArrayToJSON pArray,pForceRootType,pPretty
   repeat for each key tKey in pArray
      if pArray[tKey] is an array then
         put "}"&ArrayToJSON(pArray[tKey],pForceRootType) into pArray[tKey]
      else if char 1 of pArray[tKey] = "}" then
         put "}}" before pArray[tKey]
      else
         put textEncode(pArray[tKey],"UTF8") into pArray[tKey]
      end if
   end repeat
   return(mergJSONEncode("pArray",pForceRootType,pPretty))
end ArrayToJSON
