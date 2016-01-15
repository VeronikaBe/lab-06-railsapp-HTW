FactoryGirl.define do
	factory :doener, class: Pumpkin do
		name 'Döner Pumpkin'
		color 'ruby red'
		size  'big Döner'
		price '3.50'
	end

	factory :duerum, class: Pumpkin do
		name 'Pure Madness'
		color 'deep deep deep black'
		size  '1 mijon'
		price 'halbe mijon'
	end
end
