require 'rspec'
require './lib/product'

RSpec.describe Product do
context 'Iteration 1' do
    it 'exists' do
      product = Product.new(:paper, 'toilet paper', 3.70, 10)

      expect(product).to be_an_instance_of(Product)
    end

    it 'Product has a category' do
      product = Product.new(:paper, 'toilet paper', 3.70, 10)

      expect(product.category).to eq(:paper)
    end

    it 'Product has a name' do
      product = Product.new(:paper, 'toilet paper', 3.70, 10)

      expect(product.name).to eq('toilet paper')
    end

    it 'Product has a unit price' do
      product = Product.new(:paper, 'toilet paper', 3.70, 10)

      expect(product.unit_price).to eq(3.70)
    end

    it 'Product has a quantity' do
      product = Product.new(:paper, 'toilet paper', 3.70, 10)

      expect(product.quantity).to eq(10)
    end

    it 'Product can calculate total price' do
      product1 = Product.new(:paper, 'toilet paper', 3.70, 10)
      product2 = Product.new(:meat, 'chicken', 4.50, 2)
      product1.total_price
      product2.total_price
      expect(product1.total_price).to eq(37.0)
      expect(product2.total_price).to eq(9.0)
    end

    xit 'checks if product is hoarded' do
      product1 = Product.new(:paper, 'toilet paper', 3.70, 10)
      product2 = Product.new(:meat, 'chicken', 4.50, 2)

      product1.is_hoarded?
      product1.hoard
      product2.is_hoarded?
      product1.hoard

      expect(product1.is_hoarded?).to eq(false)
      expect(product1.is_hoarded?).to eq(true)
    end

  end
end
