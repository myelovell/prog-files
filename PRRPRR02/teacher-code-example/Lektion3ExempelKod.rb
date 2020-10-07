class Fordon
  def initialize(antal_hjul, kör)
    @antal_hjul = antal_hjul
    @kör = kör #true eller false
  end

  def set_isDriving(driving)
    @kör = driving
  end

  def is_driving()
    puts @kör
    puts "jag är i föräldrarklassen"
  end

end

class Bil < Fordon
  def initialize(kör, färg, antal_passagerare)
    super(4, kör)
    @färg = färg
    @antal_passagerare = antal_passagerare
  end

  def is_driving()
    puts !(@kör)
    puts "jag är i underklassen"
  end

  def penager_In(antal, valuta, vara)
    if valuta == "dollar"
      antal = växla(antal)
    end
    pengar_tillbaka = antal - vara
    return pengar_tillbaka
  end #penager_In

  private
  def växla(antal)
    return antal*9.81
  end


end

minBil = Fordon.new(4,true)
minFaktsikaBil = Bil.new(true, "grön", 4)
minBil.is_driving
minFaktsikaBil.is_driving
puts minFaktsikaBil.penager_In(4,"dollar", 10)
minFaktsikaBil.växla(10)