require 'rails_helper'

RSpec.describe Activity, type: :model do
  context 'validation test' do
    it 'succesfull' do
      activity = Activity.create(name: "Tomar agua", description: "Aprender a tomar agua con una taza entrenadota").save
      expect(activity).to eq(true)
    end
    it 'name presence' do
      activity = Activity.create(description: "Aprender a tomar agua con una taza entrenadota").save
      expect(activity).to eq(false)
    end
    it 'description presence' do
      activity = Activity.create(name: "Tomar agua").save
      expect(activity).to eq(false)
    end
  end
end
