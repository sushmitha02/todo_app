class Dashboard
  include Mongoid::Document

  belongs_to :user
end
