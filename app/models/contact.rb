class Contact < ActiveRecord::Base
    validates :name, presence:true, length:{minimum:5}
    validates :message, presence:true, length:{minimum:10}
end
