class Permission < ActiveRecord::Base
  
  attr_accessible :user, :thing

  belongs_to :user
  belongs_to :thing, :polymorphic => true

  attr_accessible :action, :thing_id, :thing_type, :user_id
end
