require 'rails_helper'
describe Memo do
  describe '#create' do
    it "user_id、food、limit_dateが存在すれば登録できること" do
      expect(build(:memo)).to be_valid
    end

    it "user_idがない場合は登録できないこと" do
      memo = build(:memo, user_id: nil)
      memo.valid?
      expect(memo.errors[:user]).to include("を入力してください")
    end

    it "foodがない場合は登録できないこと" do
      memo = build(:memo, food: nil)
      memo.valid?
      expect(memo.errors[:food]).to include("を入力してください")
    end

    it "limit_dateがない場合は登録できないこと" do
      memo = build(:memo, limit_date: nil)
      memo.valid?
      expect(memo.errors[:limit_date]).to include("を入力してください")
    end
  end
end