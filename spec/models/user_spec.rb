require 'rails_helper'
describe User do
  describe '#create' do

    it "email、password、password_confirmationが存在すれば登録できること" do
      user = build(:user)
      expect(user).to be_valid
    end

    it "emailがない場合は登録できないこと" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end
    
    it "passwordがない場合は登録できないこと" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end

    it "passwordが存在してもpassword_confirmationがない場合は登録できないこと" do
      user = build(:user, password_confirmation: nil)
      user.valid?
      expect(user.errors[:password_confirmation]).to include("を入力してください")
    end

    it "重複したemailが存在する場合は登録できないこと" do
      user = create(:user)
      another_user = build(:user, email: user.email)
      another_user.valid?
      expect(another_user.errors[:email]).to include("はすでに存在します")
    end

    it "emailに@とドメインがある場合は登録できること" do
      user = build(:user, email: "aaa@gmail.com")
      user.valid?
      expect(user).to be_valid
    end

    it "emailに@とドメインがない場合は登録できないこと" do
      user = build(:user, email: "gmail")
      user.valid?
      expect(user.errors[:email]).to include("は不正な値です")
    end

    it "passwordが6文字以上である場合は登録できること" do
      user = build(:user, password: "aaaaaa", password_confirmation: "aaaaaa")
      user.valid?
      expect(user).to be_valid
    end

    it "passwordが5文字以下である場合は登録できないこと" do
      user = build(:user, password: "aaaaa", password_confirmation: "aaaaa")
      user.valid?
      expect(user.errors[:password]).to include("は6文字以上で入力してください")
    end
  end
end