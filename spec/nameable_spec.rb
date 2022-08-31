require_relative('spec_helper')

describe Nameable do
  it ':correct_name() should raise an error' do
    obj = Nameable.new
    expect { obj.correct_name('Hello') }.to raise_error(NotImplementedError)
  end
end
