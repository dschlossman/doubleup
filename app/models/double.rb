class Double < ActiveRecord::Base
validates_numericality_of :rate, :unless => proc{|obj| obj.rate.blank?}
validates_numericality_of :time, :unless => proc{|obj| obj.time.blank?}


validate :charge_xor_payment

  private

    def charge_xor_payment
      if !(rate.blank? ^ time.blank?)
        errors.add_to_base("Specify a time period or rate of growth, not both. ")
      end
    end


end
