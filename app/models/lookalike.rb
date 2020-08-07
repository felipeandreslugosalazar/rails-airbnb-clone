class Lookalike < ApplicationRecord
    has_one_attached :photo
    belongs_to :user

    validates :celeb_name, presence: true
    validates :price, presence: true, numericality: { only_integer: true }
    validates :description, presence: true
    validates :photo, presence: true

    # include PgSearch::Model
    # pg_search_scope :search_by_title_and_syllabus,
    #     against: [ :title, :syllabus ],
    #     using: {
    #     tsearch: { prefix: true } # <-- now `superman batm` will return something!
    #     }
end
