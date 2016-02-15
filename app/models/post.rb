class Post < ActiveRecord::Base
  validates :title, :presence => true
  validates :message, :presence => true

  belongs_to :user
  after_create_commit { PostRelayJob.perform_later(self) }
end
