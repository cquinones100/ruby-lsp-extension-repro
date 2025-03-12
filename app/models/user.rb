class User < ApplicationRecord
  include TestModule

  belongs_to :organization
end
