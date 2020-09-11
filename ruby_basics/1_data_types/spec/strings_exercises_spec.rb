require 'spec_helper'
require_relative '../exercises/string_exercises'

RSpec.describe 'String Exercises' do

  describe 'concatenation exercise' do

    it 'returns "hello world!"' do
      expect(concatenation_exercise('world')).to eq('Hello world!')
    end

    xit 'returns "hello universe!"' do
      expect(concatenation_exercise('universe')).to eq('Hello universe!')
    end

  end

	describe 'substrings exercise' do 
		
		it 'returns true if substring is in the string' do 
			expect(substrings_exercise('chocolate', 'late')).to eq(true)
		end

		it 'returns false if substring is not in string' do 
			expect(substrings_exercise('chocolate', 'milk')).to eq(false)
		end

		it 'works with multiple words' do 
			expect(substrings_exercise('chocolate milk', 'cola')).to eq(true)
		end

	end

	describe 'escape exercise' do 
	end

	describe 'capitalizing exercise' do 
		
		it 'capitalizes a word' do 
			expect(capitalizing_exercise('exercise')).to eq('Exercise')
		end

		it 'capitalizes only the first word i there are multiple words' do 
			expect(capitalizing_exercise('exercise is good')).to eq('Exercise is good')
		end

		it 'leaves a capitalized string as is' do 
			expect(capitalizing_exercise('Capitalized')).to eq('Capitalize')
		end

	end

	describe 'uppercasing exercise' do 
		
		it 'uppercases a word' do 
			expect(uppercase_exercise('small')).to eq('SMALL')
		end

		it 'uppercases multiple words' do 
			expect(uppercase_exercise('make me bigger')).to eq('MAKE ME BIGGER')
		end

		it 'leaves uppercase letters the same' do 
			expect(uppercase_exercise('pLeAsE fIx Me')).to eq('PLEASE FIX ME')
		end

	end


	describe 'downcasing exercise' do 
		
		it 'downcases a word' do 
			expect(downcase_exercise('LARGE')).to eq('large')
		end

		it 'downcases multiple words' do 
			expect(downcase_exercise('MAKE ME SMALLER')).to eq('make me smaller')
		end

		it 'leaves downcase letters the same' do
			expect(downcase_exercise('PlEaSe hElP mE')).to eq('please help me')
		end

	end

	describe 'empty exercise' do 

		it 'returns true if string is empty' do
			expect(empty_exercise('')).to eq(true)
		end

		it 'returns false if not empty' do 
			expect(empty_exercise('wow')).to eq(false)
		end

	end

	describe 'length exercise' do 
		
		it 'returns the length of a word' do 
			expect(length_exercise('longitude')).to eq(9)
		end

		it 'returns the length of a string with multiple words' do 
			expect(length_exercise('i am quite long')).to eq(15)
		end
		
		it 'returns the length of a string of only spaces' do 
			expect(length_exercise('     ')).to eq(5)
		end

	end

	describe 'reverse exercise' do
		
		it 'reverses a word' do
			expect(reverse_exercise('desrever')).to eq('reversed')
		end

		it 'reverses multiple words' do 
			expect(reverse_exercise('dnuora kcab')).to eq('back around')
		end

	end

	describe 'remover exercise' do 
		
		it 'removes single instances of whitespace' do 
			expect(remover_exercise('white space')).to eq('whitespace')
		end

		it 'removes multiple instances of whitespace' do 
			expect(remover_exercise('many white spaces')).to eq('manywhitespaces')
		end

		it 'removes multiple spaces in a row' do 
			expect(remover_exercise('someone get    rid      of         these')).to eq('someonegetridofthese')
		end

	end
end	