class Post < ApplicationRecord
  belongs_to :user

  def self.to_csv
    attribs = %w{title description public_flag}

    CSV.generate(headers: true) do |csv|
      csv << attribs

      all.each do |post|
        csv << attribs.map { |attr| post.send(attr) }
      end
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      Post.create! row.to_hash
    end
  end
end
