# location: spec/unit/unit_spec.rb
require 'rails_helper'

#unit tests using ytvideo Testing with RSpec
# https://www.youtube.com/watch?v=71eKcNxwxVY
RSpec.describe Member, type: :model do
	context 'validation tests' do
		it 'check name' do
			member = Member.new(isAdmin: false, isOwner: false, totalPoints: '110').save
			expect(member).to eq(false)
		end
		it 'check admin' do
			member = Member.new(name: 'Jack', isOwner: false, totalPoints: '110').save
			expect(member).to eq(true)
		end
		it 'check owner' do
			member = Member.new(name: 'Jack', isAdmin: false, totalPoints: '110').save
			expect(member).to eq(true)
		end
		it 'check points' do
			#member = Member.new(name: 'Jack', isAdmin: false, isOwner: false, totalPoints: '110').save
			member = Member.new(name: 'Jack', isAdmin: false, isOwner: false).save
			expect(member).to eq(true)
		end
	end
end

#	subject do
#		described_class.new(title: 'Foundation')
#	end
#	it 'is valid with valid attributes' do
#		expect(subject).to be_valid
#	end
#	it 'is not valid without a name' do
#		subject.title = nil
#		expect(subject).not_to be_valid
#	end
#end