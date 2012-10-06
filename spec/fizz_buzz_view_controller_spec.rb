describe "FizzBuzz calculator Function" do

  it 'should return the integer if it is not fizzable or buzzable' do
    FizzBuzzViewController.fbcalc(38).should == 38
  end

  it 'should return the fizz for 3' do
    FizzBuzzViewController.fbcalc(3).should == 'fizz'
  end

  it 'should return the buzz for 5' do
    FizzBuzzViewController.fbcalc(5).should == 'buzz'
  end

  (1..10).each do |this_number|
    if this_number % 15 == 0
      it 'should return buzz for multiples of 15' do
         FizzBuzzViewController.fbcalc(this_number).should == 'fizzbuzz'
      end
    elsif this_number % 3 == 0
      it 'should return fizz for multiples of 3' do
         FizzBuzzViewController.fbcalc(this_number).should == 'fizz'
      end
    elsif this_number % 5 == 0
      it 'should return buzz for multiples of 5' do
         FizzBuzzViewController.fbcalc(this_number).should == 'buzz'
      end
    else
      it 'should return the original number' do
        FizzBuzzViewController.fbcalc(this_number).should == this_number
      end
   end
  end
end
