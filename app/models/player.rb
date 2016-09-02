class Player < ActiveRecord::Base
	validates :name, :age, :nationality, :wiki, presence:true
end
