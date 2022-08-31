require_relative('spec_helper')

describe Person do
  before(:each) do
    @obj1 = Person.new(11, 'Dominic')
    @obj2 = Person.new(19, 'Elissa', parent_permission: false)
  end

  it 'Person::name to equal `Dominic` or `Elissa`' do
    expect(@obj1.name).to eq('Dominic')
    expect(@obj2.name).to eq('Elissa')
  end

  it 'Person::age to equal 11 or 13' do
    expect(@obj1.age).to eq(11)
    expect(@obj2.age).to eq(19)
  end

  it 'Person::id must range between 1 and 1000' do
    expect(@obj1.id).to be_between(1, 1000).inclusive
    expect(@obj2.id).to be_between(1, 1000).inclusive
  end

  it 'Person::can_use_services?' do
    expect(@obj1.can_use_services?).to be_truthy
    expect(@obj2.can_use_services?).to be_truthy
  end
end
