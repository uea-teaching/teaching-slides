function RawBlock (raw)
    v = '\\centering\\includegraphics[width=0.25\\textwidth]{/img/video.png}'
    a = '\\centering\\includegraphics[width=0.25\\textwidth]{/img/audio.png}'
    if raw.format == 'html' and string.match(raw.text, "</video>") then
        return pandoc.RawBlock('tex', v)
    end
    if raw.format == 'html' and string.match(raw.text, "</audio>") then
        return pandoc.RawBlock('tex', a)
    end
    return raw
  end
