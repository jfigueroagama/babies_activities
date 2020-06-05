require 'rails_helper'

RSpec.describe Assistant, type: :model do
  context 'validation test' do
    it 'succesfull' do
      assistant = Assistant.create(name: "Antonia Fernandez", address: "Amores 560", phone: "56-657-2345", group: "Maternal").save
      expect(assistant).to eq(true)
    end
    it 'name presence' do
      assistant =Assistant.create(address: "Amores 560", phone: "56-657-2345", group: "Maternal").save
      expect(assistant).to eq(false)
    end
    it 'address presence' do
      assistant = Assistant.create(name: "Antonia Fernandez", phone: "56-657-2345", group: "Maternal").save
      expect(assistant).to eq(false)
    end
    it 'phone presence' do
      assistant = Assistant.create(name: "Antonia Fernandez", address: "Amores 560", group: "Maternal").save
      expect(assistant).to eq(false)
    end
    it 'group presence' do
      assistant = Assistant.create(name: "Antonia Fernandez", address: "Amores 560", phone: "56-657-2345").save
      expect(assistant).to eq(false)
    end
  end
end
