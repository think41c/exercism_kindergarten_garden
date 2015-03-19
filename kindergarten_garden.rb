class Garden
  attr_reader :diagram

  def initialize (diagram, 
                  students = %w(Alice  Bob    Charlie David 
                                Eve    Fred   Ginny   Harriet 
                                Ileana Joseph Kincaid Larry
                                )
                 )
    @diagram   = diagram
    @students  = students
    @students  = students
  end

  def garden_assigner
    student_counter = 0
    loop_counter    = 0
    @diagram_array  = @diagram.split("")

    @diagram_array.each_with_index do |code, x|
      
      if loop_counter == 2 then 
        student_counter +=  1
        loop_counter = 0 
      end

      if code == "\n" 
        student_counter = 0
        loop_counter    = -1
      else
          @students[student_counter] << code
          puts @students[student_counter]
      end
      loop_counter += 1
    end

  end

  def garden_decoder(pots)
    garden_decoded = [] 
    divided_pots = pots.split('')
    divided_pots.each do |plant_codes|
      case plant_codes
      when "R"
        garden_decoded << :radishes
      when "C" 
        garden_decoded << :clover
      when "G" 
        garden_decoded << :grass
      when "V"
        garden_decoded << :violets
      end
    end
    p garden_decoded
  end


  def alice
    alice_ref = 0   # Find out later what index Alice is in
    garden_assigner
    @students.each_with_index do |student, x|
      name = student.upcase
      if name.include?("ALICE")
        alice_ref = x 
      end
    end

    alices_pots = @students[alice_ref]
    alices_pots = alices_pots[-4..-1]
    puts alices_pots
    garden_decoder(alices_pots)
  end

  def bob
   bob_ref = 0   # Find out later what index Alice is in
    garden_assigner
    @students.each_with_index do |student, x|
      name = student.upcase
      if name.include?("BOB")
        bob_ref = x 
      end
    end

    bobs_pots = @students[bob_ref]
    bobs_pots = bobs_pots[-4..-1]
    garden_decoder(bobs_pots)

  end

  def charlie
   charlie_ref = 0   # Find out later what index Alice is in
    garden_assigner
    @students.each_with_index do |student, x|
      name = student.upcase
      if name.include?("CHARLIE")
        charlie_ref = x 
      end
    end

    charlies_pots = @students[charlie_ref]
    charlies_pots = charlies_pots[-4..-1]
    garden_decoder(charlies_pots)

  end

  def david
    david_ref = 0   # Find out later what index Alice is in
    garden_assigner
    @students.each_with_index do |student, x|
      name = student.upcase
      if name.include?("DAVID")
        david_ref = x 
      end
    end

    davids_pots = @students[david_ref]
    davids_pots = davids_pots[-4..-1]
    garden_decoder(davids_pots)
  end


def eve
    eve_ref = 0   # Find out later what index Alice is in
    garden_assigner
    @students.each_with_index do |student, x|
      name = student.upcase
      if name.include?("EVE")
        eve_ref = x 
      end
    end

    eves_pots = @students[eve_ref]
    eves_pots = eves_pots[-4..-1]
    garden_decoder(eves_pots)
  end

def fred
 fred_ref = 0   # Find out later what index Alice is in
    garden_assigner
    @students.each_with_index do |student, x|
      name = student.upcase
      if name.include?("FRED")
        fred_ref = x 
      end
    end

    freds_pots = @students[fred_ref]
    freds_pots = freds_pots[-4..-1]
    garden_decoder(freds_pots)
end

def ginny
  ginny_ref = 0   # Find out later what index Alice is in
    garden_assigner
    @students.each_with_index do |student, x|
      name = student.upcase
      if name.include?("GINNY")
        ginny_ref = x 
      end
    end

    ginnys_pots = @students[ginny_ref]
    ginnys_pots = ginnys_pots[-4..-1]
    garden_decoder(ginnys_pots)
end

def harriet
  harriet_ref = 0   # Find out later what index Alice is in
    garden_assigner
    @students.each_with_index do |student, x|
      name = student.upcase
      if name.include?("HARRIET")
        harriet_ref = x 
      end
    end

    harriet_ref = @students[harriet_ref]
    harriet_ref = harriet_ref[-4..-1]
    garden_decoder(harriet_ref)
end

def ileana
    ileana_ref = 0   # Find out later what index Alice is in
    garden_assigner
    @students.each_with_index do |student, x|
      name = student.upcase
      if name.include?("ILEANA")
        ileana_ref = x 
      end
    end

    ileanas_pots = @students[ileana_ref]
    ileanas_pots = ileanas_pots[-4..-1]
    garden_decoder(ileanas_pots)
end

def joseph
  joseph_ref = 0   # Find out later what index Alice is in
  garden_assigner
  @students.each_with_index do |student, x|
    name = student.upcase
    if name.include?("JOSEPH")
      joseph_ref = x 
    end
  end

  josephs_pots = @students[joseph_ref]
  josephs_pots = josephs_pots[-4..-1]
  garden_decoder(josephs_pots)
end

def kincaid
 kincaid_ref = 0   # Find out later what index Alice is in
  garden_assigner
  @students.each_with_index do |student, x|
    name = student.upcase
    if name.include?("KINCAID")
      kincaid_ref = x 
    end
  end

  kincaid_ref = @students[kincaid_ref]
  kincaid_ref = kincaid_ref[-4..-1]
  garden_decoder(kincaid_ref)
end

def patricia
  patricia_ref = 0   # Find out later what index Alice is in
    garden_assigner
    @students.each_with_index do |student, x|
      name = student.upcase
      if name.include?("PATRICIA")
        patricia_ref = x 
      end
    end

    patricias_pots = @students[patricia_ref]
    patricias_pots = patricias_pots[-4..-1]
    garden_decoder(patricias_pots)
end

end

garden = Garden.new("VVCG\nVVRC")
garden.garden_assigner
garden.alice
# garden.bob