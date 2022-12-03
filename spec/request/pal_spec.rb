RSpec.describe PalindromsController, type: :request do
  
    context 'adding to database' do
      it 'added to db' do
        row = []
        row << {num: 100}
        Palindrom.insert_all(row)
        expect(Palindrom.where(num: 100).count).to eq(1)
      end
  
      it 'added dupl to db' do
        row = []
        row << {num: 100}
        Palindrom.insert_all(row)
        expect(Palindrom.where(num: 100).count).to eq(1)
      end
    end
  
    context 'failed find in database' do
      it 'dont exist in db' do
        palindrom = Palindrom.new do |elem|
          elem.num = -2
        end
        expect(palindrom.save).to eq(false)
      end
    end
  end