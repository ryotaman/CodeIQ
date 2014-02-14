 #! ruby -EUTF-8
# # -*- mode:ruby; coding:utf-8 -*-
steps = 30
@width = [1,2,3]
@num = 0
@routes = {}


def check_remainder(key, remainder, x)
  nokori = remainder - x
  @routes[key]["step"] << x
  @routes[key]["nokori"] = nokori
  if nokori == 0
    @routes[key]["status"] = true
  elsif nokori < 0
    @routes[key]["status"] = false
  else
    @routes[key]["status"] = nil
  end
end

def check_route(steps, width)
  @width.each do | w |
    
  end
end

@width.each do | w |
  @routes[@num]={}
  @routes[@num]["step"] = []
  check_remainder(@num, steps, w )
  @num += 1
end
p @routes
