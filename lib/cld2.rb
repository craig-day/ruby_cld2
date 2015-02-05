require 'ffi'
require_relative 'cld2/generated_language'
require_relative 'cld2/name_to_code_mapping'

module CLD2
  extend FFI::Library

  class << self
    def detect_language(text, is_plain_text = true)
      is_reliable = FFI::MemoryPointer.new(:int)
      detected = ext_detect_language(text.to_s, text.to_s.length, is_plain_text, is_reliable)
      build_result(detected, is_reliable)
    end

    def detect_language_summary(text, is_plain_text = true)
      language3   = FFI::MemoryPointer.new(:int, 3)
      percent3    = FFI::MemoryPointer.new(:int, 3)
      text_bytes  = FFI::MemoryPointer.new(:int)
      is_reliable = FFI::MemoryPointer.new(:int)

      detected = ext_detect_language_summary(text.to_s, text.to_s.length, is_plain_text, language3, percent3, text_bytes, is_reliable)
      build_summary(detected, language3, percent3, text_bytes, is_reliable)
    end

    private

    def build_result(detected, is_reliable)
      {
        :name     => detected.to_s,
        :code     => NameToCodeMapping::CODE_BY_NAME[detected],
        :reliable => (is_reliable.read_int == 1)
      }
    end

    def build_summary(detected, language3, percent3, text_bytes, is_reliable)
      languages = language3.read_array_of_int(3).collect { |l| GeneratedLanguage::Language[l] }
      percents = percent3.read_array_of_int(3)

      {
        :primary    => build_result(detected, is_reliable),
        :languages  =>
          [
            { :name => languages[0].to_s, :code => NameToCodeMapping::CODE_BY_NAME[languages[0]], :confidence => percents[0] },
            { :name => languages[1].to_s, :code => NameToCodeMapping::CODE_BY_NAME[languages[1]], :confidence => percents[1] },
            { :name => languages[2].to_s, :code => NameToCodeMapping::CODE_BY_NAME[languages[2]], :confidence => percents[2] }
          ]
      }
    end
  end

  GEM_ROOT = File.expand_path("../../", __FILE__)
  ffi_lib "#{GEM_ROOT}/ext/cld2/lib/libcld2_full.so"

  attach_function 'ext_detect_language', 'DetectLanguage', [ :string, :int, :bool, :pointer ], GeneratedLanguage::Language
  attach_function 'ext_detect_language_summary', 'DetectLanguageSummary', [ :string, :int, :bool, :pointer, :pointer, :pointer, :pointer ], GeneratedLanguage::Language
end
