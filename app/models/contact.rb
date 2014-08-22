class Contact
  include Cequel::Record
  key :id, :timeuuid, auto: true
  timestamps

  column :name, :text, index: true
  column :address, :text
  column :city, :text
  column :state, :text
  column :postal_code, :text
  column :phone, :text

  validates :name, presence: true
  validate  :uniq_name

  def uniq_name
    if name.present?
      Contact.where(name: name).each do |contact|
        errors.add(:base, "Name must be unique") if contact.id != self.id
      end
    end
  end
end
