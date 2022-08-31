require_relative('spec_helper')

describe(Classroom) do
  before(:each) do
    @classroom = Classroom.new(:third_grade)
  end

  context('without students') do
    it("classroom.label to equal ':third_grade'") do
      expect(@classroom.label).to eq(:third_grade)
    end

    it('@students to be empty') do
      expect(@classroom.students).to be_empty
    end
  end

  context('with students') do
    it('should have students') do
      Student.new(@classroom, 18, 'Angelika')
      expect(@classroom.students).not_to be_empty
    end
  end
end
