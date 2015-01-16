require 'minitest/autorun'

class Image
	attr_accessor :image

	def initialize(image) 
		@image = image
	end 

	
	def output_image 
		@image.each do |array|
		puts array.join("")
		end
	end

end 

class TestImage < MiniTest::Test
	def test_output_image
		image = Image.new([
			[0,0,0,0],
			[0,1,0,0],
			[0,0,0,1],
			[0,0,0,0]
		])

		assert image.output_image 
		expected = [
			[0,0,0,0],
			[0,1,0,0],
			[0,0,0,1],
			[0,0,0,0]
		]

		assert_equal expected, image.image
	end 

end 