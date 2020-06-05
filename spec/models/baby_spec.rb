require 'rails_helper'

RSpec.describe Baby, type: :model do
  context 'validation test' do
    it 'succesfull' do
      baby = Baby.new(name: "Pedro Lopez", birthday: DateTime.new(2018,6,15,20), mothers_name: "Maria Gomez", fathers_name: "Antonio Lopez", address: "CDMX", phone: "55-2324-7879").save
      expect(baby).to eq(true)
    end
    it 'name presence' do
      baby = Baby.new(birthday: DateTime.new(2018,6,15,20), mothers_name: "Maria Gomez", fathers_name: "Antonio Lopez", address: "CDMX", phone: "55-2324-7879").save
      expect(baby).to eq(false)
    end
    it 'birthday presence' do
      baby = Baby.new(name: "Pedro Lopez", mothers_name: "Maria Gomez", fathers_name: "Antonio Lopez", address: "CDMX", phone: "55-2324-7879").save
      expect(baby).to eq(false)
    end
    it 'mothers_name presence' do
      baby = Baby.new(name: "Pedro Lopez", birthday: DateTime.new(2018,6,15,20), fathers_name: "Antonio Lopez", address: "CDMX", phone: "55-2324-7879").save
      expect(baby).to eq(false)
    end
    it 'fathers_name presence' do
      baby = Baby.new(name: "Pedro Lopez", birthday: DateTime.new(2018,6,15,20), mothers_name: "Maria Gomez", address: "CDMX", phone: "55-2324-7879").save
      expect(baby).to eq(false)
    end
    it 'address presence' do
      baby = Baby.new(name: "Pedro Lopez", birthday: DateTime.new(2018,6,15,20), mothers_name: "Maria Gomez", fathers_name: "Antonio Lopez", phone: "55-2324-7879").save
      expect(baby).to eq(false)
    end
    it 'phone presence' do
      baby = Baby.new(name: "Pedro Lopez", birthday: DateTime.new(2018,6,15,20), mothers_name: "Maria Gomez", fathers_name: "Antonio Lopez", address: "CDMX").save
      expect(baby).to eq(false)
    end
  end
end
