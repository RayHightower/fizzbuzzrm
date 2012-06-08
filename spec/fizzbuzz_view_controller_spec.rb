describe "Calculator Function" do
  before do
    this_number = 28
  end

  it 'should return the integer if it is not fizzable or buzzable' do
    FizzBuzzViewController.calc(28).should == 28
  end

  it 'should return the fizz for 3' do
    FizzBuzzViewController.calc(3).should == 'fizz'
  end

  it 'should return the buzz for 5' do
    FizzBuzzViewController.calc(5).should == 'buzz'
  end
end
