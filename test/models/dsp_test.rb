# == Schema Information
#
# Table name: dsps
#
#  id                :bigint           not null, primary key
#  dsp_admin_email   :string
#  dsp_admin_name    :string
#  dsp_admin_number  :string
#  dsp_admin_surname :string
#  name              :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#
require "test_helper"

class DspTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
