class Comment < ActiveRecord::Base
    before_create :default_status
    validates :username, presence:true, length:{minimum:5}
    validates :content, presence:true, length:{minimum:10}
    scope :status_active, ->{where(status:'Dirilis')}
    belongs_to :article

    def default_status
        self.status = 'Active'
    end
end