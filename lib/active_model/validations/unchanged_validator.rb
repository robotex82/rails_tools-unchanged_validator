module ActiveModel
  module Validations
    class UnchangedValidator < ::ActiveModel::EachValidator
      def validate_each(record, attribute, value)
        record.errors.add(attribute, options[:message] || :unchanged) if record.send("#{attribute}_changed?")
      end
    end
  end
end

