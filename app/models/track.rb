# == Schema Information
#
# Table name: tracks
#
#  id                :bigint           not null, primary key
#  arrive_at_offsite :time
#  cycle             :integer
#  driver            :string
#  pad               :integer
#  route_code        :string
#  service_type      :string
#  staging_location  :string
#  wave              :time
#  wave_no           :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  dsp_id            :bigint           not null
#
# Indexes
#
#  index_tracks_on_dsp_id  (dsp_id)
#
# Foreign Keys
#
#  fk_rails_...  (dsp_id => dsps.id)
#
class Track < ApplicationRecord
  belongs_to :dsp
end
