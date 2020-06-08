require 'rails_helper'

RSpec.describe ActivityLog, type: :model do
    it 'duration presence' do
      activity_log = ActivityLog.create(start_time: DateTime.new(2020,4,10,9), stop_time: DateTime.new(2020,4,10,12), name: "Felipe Lopez", comment: "We were playing ball").save
      expect(activity_log).to eq(false)
    end
    it 'succesfull' do
      before_count = ActivityLog.count
      baby = Baby.new(name: "Pedro Lopez", birthday: DateTime.new(2018,6,15,20), mothers_name: "Maria Gomez", fathers_name: "Antonio Lopez", address: "CDMX", phone: "55-2324-7879")
      baby.save!
      assistant = Assistant.new(name: "Antonia Fernandez", address: "Amores 560", phone: "56-657-2345", group: "Maternal")
      assistant.save!
      activity = Activity.new(name: "Tomar agua", description: "Aprender a tomar agua con una taza entrenadota")
      activity.save!
      activity_log = ActivityLog.new(start_time: DateTime.new(2020,4,10,9), stop_time: DateTime.new(2020,4,10,12), duration: TimeDifference.between(DateTime.new(2020,4,10,9), DateTime.new(2020,4,10,12)).humanize, name: "Pedro Lopez", comment: "We were playing ball", baby_id: baby.id, activity_id: activity.id, assistant_id: assistant.id)
      activity_log.save!
      expect(ActivityLog.count).not_to eq(before_count)
    end
    it 'comment presence' do
      activity_log = ActivityLog.create(start_time: DateTime.new(2020,4,10,9), stop_time: DateTime.new(2020,4,10,12), duration: TimeDifference.between(DateTime.new(2020,4,10,9), DateTime.new(2020,4,10,12)).humanize, name: "Felipe Lopez").save
      expect(activity_log).to eq(false)
    end
    it "should belong to baby" do
      b = ActivityLog.reflect_on_association(:baby)
      expect(b.macro).to eq(:belongs_to)
    end
    it "should belong to assistant" do
      b = ActivityLog.reflect_on_association(:assistant)
      expect(b.macro).to eq(:belongs_to)
    end
    it "should belong to activity" do
      b = ActivityLog.reflect_on_association(:activity)
      expect(b.macro).to eq(:belongs_to)
    end
end
