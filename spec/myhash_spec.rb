require "rspec"
require "myhash"

describe(MyHash) do
  it ("make sure that hash is a class") do
    test_hash = MyHash.new()
    expect(test_hash).to be_a(MyHash)
  end

  it ("it will return an empty hash") do
    test_hash = MyHash.new()
    expect(test_hash.my_hash).to eq({})
  end

  describe("#myStore") do
    it ("will store a value in the hash") do
      test_hash = MyHash.new()
      expect{ test_hash.myStore("kitten", "cute")}.to change{test_hash.my_hash}.from({}).to({"kitten" => "cute"})
    end
  end

  describe("#myFetch") do
    it("retrieves a stored value by its key") do
      test_hash = MyHash.new()
      test_hash.myStore("kitten", "cute")
      expect(test_hash.myFetch("kitten")).to(eq("cute"))
    end
  end
end
