class Garden
  attr_reader :diagram

  def initialize (diagram, 
                  students = %w(Alice  Bob    Charlie David 
                                Eve    Fred   Ginny   Harriet 
                                Ileana Joseph Kincaid Larry
                                )
                 )
    @diagram   = diagram.gsub(" ","")
    @students  = students.sort
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
    garden_decoded
  end

  def student_pot_generator(name)
    student_ref = 0
    garden_assigner
    @students.each_with_index do |student, x|
    if student.upcase.include?(name)
        student_ref = x 
      end
    end

    student_pots = @students[student_ref][-4..-1]
    garden_decoder(student_pots)  
  end

  def alice
    student_pot_generator("ALICE")
  end  
  
  def bob
    student_pot_generator("BOB")
  end

  def charlie
    student_pot_generator("CHARLIE")
  end

  def david
    student_pot_generator("DAVID")
  end

  def eve
    student_pot_generator("EVE")   
  end

  def fred
    student_pot_generator("FRED")   
  end

  def ginny
    student_pot_generator("GINNY")   
  end

  def harriet
    student_pot_generator("HARRIET")   
  end

  def ileana
    student_pot_generator("ILEANA")   
  end

  def joseph
    student_pot_generator("JOSEPH")   
  end

  def kincaid
    kincaid_ref = 0
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

  def roger
    roger_ref = 0
    garden_assigner
    @students.each_with_index do |student, x|
      name = student.upcase
      if name.include?("ROGER")
        roger_ref = x 
      end
    end

    roger_ref = @students[roger_ref]
    garden_decoder(roger_ref[-4..-1])
  end

  def samantha 
    samantha_ref = 0
    garden_assigner
    @students.each_with_index do |student, x|
      name = student.upcase
      if name.include?("SAMANTHA")
        samantha_ref = x 
      end
    end

    samanthas_pots = @students[samantha_ref]
    garden_decoder(samanthas_pots[-4..-1])
  end

  def xander
    xander_ref = 0
      garden_assigner
      @students.each_with_index do |student, x|
        name = student.upcase
        if name.include?("XANDER")
          xander_ref = x 
        end
      end

      xanders_pots = @students[xander_ref]
      garden_decoder(xanders_pots[-4..-1])
  end


  def larry
    larry_ref = 0
      garden_assigner
      @students.each_with_index do |student, x|
        name = student.upcase
        if name.include?("LARRY")
          larry_ref = x 
        end
      end

      larrys_pots = @students[larry_ref]
      garden_decoder(larrys_pots[-4..-1])
  end

  def patricia
    patricia_ref = 0
      garden_assigner
      @students.each_with_index do |student, x|
        name = student.upcase
        if name.include?("PATRICIA")
          patricia_ref = x 
        end
      end

      patricias_pots = @students[patricia_ref]
      garden_decoder(patricias_pots[-4..-1])
  end

end