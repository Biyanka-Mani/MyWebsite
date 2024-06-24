class User < ApplicationRecord
    validates :firstname, presence: true
    validates :lastname ,presence: true
    validates :username ,presence: true , length: {minimum: 8}
    validates :password ,presence: true ,length: {minimum: 8}
    validates :phone,presence: true ,length: {minimum: 10}
    validates :dob,presence: true
    validates :age, presence: true, numericality: { only_integer: true }
    validates :status,presence:false
    validates :experience,presence:false,numericality: { only_integer: true }
    validates :bio,presence:false
    validates :work_summary,presence:false
    validates :mail,presence:false

end
