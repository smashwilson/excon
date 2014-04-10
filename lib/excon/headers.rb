module Excon
  class Headers < Hash

    alias_method :raw_writer, :[]=
    alias_method :raw_reader, :[]

    def initialize(*args)
      super
      @downcased = {}
    end

    def [](key)
      @downcased[key.downcase]
    end

    def []=(key, value)
      raw_writer(key, value)
      @downcased[key.downcase] = value
    end

    alias_method :store, :[]=

  end
end
