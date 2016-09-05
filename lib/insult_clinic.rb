
class InsultClinic
  attr_reader :adjective, :noun, :target
  def initialize
    @target = ["You", "Your mother is a", "Your father is a"]
    @noun = ["canoe", "banana", "pillock", "snollygoster", "cockalorum", "lickspittle", "smellfungus", "ninnyhammer", "mumpsimus", "milksop", "hobbledehoy", "pettifogger", "mooncalf", "heap of parrot droppings", "gob", "pervert", "food trough", "trollop", "tart", "fairy", "tosser", "ponce", "son of a silly person", "surrender monkey", "choir boy", "carriage ride participant", "bedwetting type", "abdycomoist", "bedswerver", "bespawler", "bobolyne", "cumberworld", "dalcop", "dew beater", "dorbel", "drate poke", "driggle draggle", "fustylugs", "fustilarian", "gillie wet foot", "gnashgab", "gobermouch", "gowpenful-o'-anything", "klazomaniac", "lubberwort", "muck spout", "mumblecrust", "quisby", "raggabrash", "rakefire", "roiderbanks", "saddle goose", "scobberlotcher", "skelpie limmer", "smell feast", "snoutband", "sorner", "stampcrab", "stymphalist", "tallowcatch", "triptaker", "wandought", "whiffle whaffle", "yaldson", "zoilist"]
    @adjective = ["truculent", "fatuous", "vainglorious", "petulant", "moribund", "jejune", "feckless", "antiquated", "rambunctious", "mundane", "misshapen", "glib", "dreary", "dopey", "devoid", "deleterious", "degrading", "empty headed", "clammy", "brazen", "indiscreet", "flatulent", "cheese eating", "prancing", "indecorous", "cromulent", "noodle-armed", "imbecilic", "dysfunctional", "dubious", "drunken", "disreputable", "dismal", "dim", "deficient", "deceitful", "damned", "daft", "contrary", "churlish", "catty", "banal", "asinine", "infantile", "lurid", "morbid", "repugnant", "unkempt", "vapid", "decrepit", "malevolent", "impertinent", "grotesque", "puerile", "snotty-faced", "festering", "vacuous", "toffee-nosed", "malodorous"]
    @num_of_adjs = rand(1..5)
  end

  def random_insult
    adjs = @adjective.sample(@num_of_adjs)
    if adjs.length == 1
      adjs = adjs.join('')
    else
      adjs = adjs.join(', ')
    end

    target = @target.sample
    if target != "You" && adjs[0] =~ /[aeiou]/i
      target += "n"
    end
    "#{target} #{adjs} #{@noun.sample}"
  end

  def split(args)
    self.random_insult.split(args)
  end

end
