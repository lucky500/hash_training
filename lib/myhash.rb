class MyHash
  attr_accessor :my_hash
  def initialize(hash={})
    @my_hash = hash
  end

  def myStore(key, value)
    @my_hash.store(key, value)
  end

  def myFetch(key)
    @my_hash.fetch(key)
  end
end
