class Tran < ActiveRecord::Base
  belongs_to :user
  belongs_to :fax_case
  attr_accessible :tran_no
end
