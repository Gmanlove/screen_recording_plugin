# app/models/recording.rb

class Recording < ApplicationRecord
   
    validates :content, presence: true

  end
  