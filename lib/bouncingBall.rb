def bouncingBall(h, bounce, window)
    if 0 < bounce && bounce < 1 && h > window && h > 0
      2 + bouncingBall(h.to_f * bounce, bounce, window)
    else
      -1
    end
end
