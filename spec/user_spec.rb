# user.rb（テストの対象となるファイル）を読み込むための記述
require_relative '../lib/user'

# テストを実行するためのおきまりの書き方
RSpec.describe User do
  # テストの内容
  describe "Userクラスの情報" do
    let(:params) {{age: 31, hobby: "Soccer"}}
    context "名前がTanakaの場合" do
      before do
        params.merge!(name: "Tanaka")
      end
      # テストの期待値
      it "return user name" do
        # テスト対象となるUserクラスをオブジェクト化
        user = User.new(params)
        # テストコード（名前が期待値と一致することを確認）
        expect(user.name).to eq "Tanaka"
      end
      it "return user age" do
        user = User.new(params)
        # テストコード（年齢が期待値と一致することを確認）
        expect(user.age).to eq 31
      end
      it "return user hobby" do
        user = User.new(params)
        # テストコード（趣味が期待値と一致することを確認）
        expect(user.hobby).to eq "Soccer"
      end
    end
    context "名前がItoの場合" do
      before do
        params.merge!(name: "Ito")
      end
      # テストの期待値
      it "return user name" do
        # テスト対象となるUserクラスをオブジェクト化
        user = User.new(params)
        # テストコード（名前が期待値と一致することを確認）
        expect(user.name).to eq "Ito"
      end
      it "return user age" do
        user = User.new(params)
        # テストコード（年齢が期待値と一致することを確認）
        expect(user.age).to eq 31
      end
      it "return user hobby" do
        user = User.new(params)
        # テストコード（趣味が期待値と一致することを確認）
        expect(user.hobby).to eq "Soccer"
      end
    end
  end
end