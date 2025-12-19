script "org.openxtalk.hh.svgtext.__DefaultScript"

on mouseDown pMouseButton
   if pMouseButton = 1 then
      set the strokeColor of me to 100,0,0,127
   end if
end mouseDown

on mouseUp pMouseButton
   if pMouseButton = 1 then
      set the strokeColor of me to 0,0,0,0
   end if
end mouseUp
