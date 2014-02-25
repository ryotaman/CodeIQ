#! ruby -EUTF-8
# # -*- mode:ruby; coding:utf-8 -*-
# URL https://codeiq.jp/challenge.php?challenge_id=713
@routes = []
@width = [1,2,3]
@num = 0
@steps = 10

def routes_check(array)
  status  = false
  array.each do | obj |
    if obj[:nokori] > 0
      status = true
      break
    end
  end
  status
end
def routes_set(array)
  tmp=[]
  array.each_with_index do | obj, j |
    if obj[:nokori] <= 0
      tmp << obj if obj[:nokori] == 0
      next
    end
    @width.each do | w |
      tmp_routes = obj[:route].clone
      tmp_nokori = obj[:nokori]
      tmp << {route: tmp_routes<<w, nokori: tmp_nokori - w }
    end
  end
  routes_set tmp if routes_check( tmp ) == true
  p tmp
end

@width.each do | i |
  p routes_set [{route: [i], nokori: @steps-i}]
end
@anser = []
@routes.each do | obj |
  @anser << obj if obj[:nokori] == 0
end
p @anser.count
