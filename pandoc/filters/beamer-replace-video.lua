function Image(img)
  if string.match(img.src, ".mov") or string.match(img.src, ".mp4") or string.match(img.src, ".m4v") then
      img.src = "/img/video.png"
  end
  return img
end
