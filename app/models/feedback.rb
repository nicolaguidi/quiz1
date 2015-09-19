class Feedback < ActiveRecord::Base
  validates :message, :presence => true,
                      :length => { :minimum => 3,
                                  :maximum => 140 }
  validates :author, :presence => true,
                     :length => { :minimum => 3,
                                  :maximum => 50 }
end
