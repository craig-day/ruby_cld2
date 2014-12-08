###############################################################################
##
## This is a small subset of the test data to that is found in
## ext/cld2/internal/unittest_data.h
## and is just being used to verify the ruby binding.
##
###############################################################################
require 'cld2'

describe CLD2 do
  describe ".detect_language" do
    it "identify unreliable English" do
      result = CLD2.detect_language("Hello")
      expect(result[:name]).to eq "ENGLISH"
      expect(result[:reliable]).to eq false
    end

    it "identify reliable English" do
      result = CLD2.detect_language("Hello. My name is Bob. I like apples.")
      expect(result[:name]).to eq "ENGLISH"
      expect(result[:reliable]).to eq true
    end

    it "identify English with bad UTF-8" do
      result = CLD2.detect_language("Forty good bytes followed by bad UTF-8:'\xC0\xA9' and then good again.")
      expect(result[:name]).to eq "ENGLISH"
      expect(result[:reliable]).to eq true
    end

    it "identify reliable Russian" do
      result = CLD2.detect_language(" \xD0\xB0 \xD0\xBD\xD0\xB5\xD0\xBF\xD1\x80\xD0\xB0\xD0\xB2\xD0\xB8\xD0\xBB\xD1\x8C\xD0\xBD\xD1\x8B\xD0\xB9 \xD1\x84\xD0\xBE\xD1\x80\xD0\xBC\xD0\xB0\xD1\x82 \xD0\xB8\xD0\xB4\xD0\xB5\xD0\xBD\xD1\x82\xD0\xB8\xD1\x84\xD0\xB8\xD0\xBA\xD0\xB0\xD1\x82\xD0\xBE\xD1\x80\xD0\xB0 \xD0\xB4\xD0\xBD \xD0\xBD\xD0\xB0\xD0\xB7\xD0\xB0\xD0\xB4")
      expect(result[:name]).to eq "RUSSIAN"
      expect(result[:reliable]).to eq true
    end
  end
end
