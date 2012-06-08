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

  (1..100).each do |another_number|
    if another_number % 15 == 0
      it 'should return buzz for multiples of 15' do
         FizzBuzzViewController.calc(another_number).should == 'fizzbuzz'
      end
    elsif another_number % 3 == 0
      it 'should return fizz for multiples of 3' do
         FizzBuzzViewController.calc(another_number).should == 'fizz'
      end
    elsif another_number % 5 == 0
      it 'should return buzz for multiples of 5' do
         FizzBuzzViewController.calc(another_number).should == 'buzz'
      end
    else
      it 'should return the original number' do
        FizzBuzzViewController.calc(another_number).should == another_number
      end
   end
  end
end
