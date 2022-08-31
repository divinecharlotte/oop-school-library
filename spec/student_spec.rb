require_relative('spec_helper')

describe Student do
  before(:each) do
    @classrooms = [
      Classroom.new(:third_grade),
      Classroom.new(:sixth_grade)
    ]
    @students = [
      Student.new(@classrooms.first, 21),
      Student.new(@classrooms.first, 19, 'Agnes')
    ]
  end

  it "Students' names should match" do
    expect(@students.first.name).to eq('Unknown')
    expect(@students.last.name).to eq('Agnes')
  end

  it "Students' ages should match" do
    expect(@students.first.age).to eq(21)
    expect(@students.last.age).to eq(19)
  end

  it 'Students should appear in classrooms' do
    expect(@classrooms.first.students.first).to be(@students.first)
    expect(@classrooms.first.students.last).to be(@students.last)
  end

  it 'Assign class through student back-ref' do
    @students.last.classroom = @classrooms.last
    expect(@classrooms.last.students.include?(@students.last)).to be_truthy
  end
end
