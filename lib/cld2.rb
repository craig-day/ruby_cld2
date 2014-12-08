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

    private

    def build_result(detected, is_reliable)
      {
        :name     => detected.to_s,
        :code     => NameToCodeMapping::CODE_BY_NAME[detected],
        :reliable => (is_reliable.read_int == 1)
      }
    end
  end

  GEM_ROOT = File.expand_path("../../", __FILE__)
  ffi_lib "#{GEM_ROOT}/ext/cld2/lib/libcld2_full.so"

  attach_function 'ext_detect_language', 'DetectLanguage', [ :string, :int, :bool, :pointer ], GeneratedLanguage::Language
end
