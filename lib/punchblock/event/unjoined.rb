# encoding: utf-8

module Punchblock
  class Event
    class Unjoined < Event
      register :unjoined, :core

      ##
      # @return [String] the call ID that was unjoined
      def call_id
        read_attr :'call-id'
      end

      ##
      # @param [String] other the call ID that was unjoined
      def call_id=(other)
        write_attr :'call-id', other
      end

      ##
      # @return [String] the mixer name that was unjoined
      def mixer_name
        read_attr :'mixer-name'
      end

      ##
      # @param [String] other the mixer name that was unjoined
      def mixer_name=(other)
        write_attr :'mixer-name', other
      end

      def transfer_disposition
        read_attr :'transfer-disposition'
      end
      
      def transfer_disposition=(other)
        write_attr :'transfer-disposition', other
      end

      def transfer_to
        read_attr :'transfer-to'
      end
      
      def transfer_to=(other)
        write_attr :'transfer-to', other
      end

      def inspect_attributes # :nodoc:
        [:call_id, :mixer_name, :transfer_disposition, :transfer_to] + super
      end

    end # Unjoined
  end
end # Punchblock
