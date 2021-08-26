function Div(elem)
  for i, c in ipairs(elem.classes) do
    if c == "incremental" then
      table.remove(elem.classes, i)
    end
  end
  return elem
  end
