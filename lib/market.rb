require 'pry'
class Market
  attr_reader :name, :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    @vendors.map do |vendor|
      vendor.name
    end
  end

  def vendors_that_sell(item)
    @vendors.find_all do |vendor|
      vendor.inventory.keys.include?(item)
    end
  end

  def sorted_item_list
    items = []
    @vendors.each do |vendor|
      vendor.inventory.each do |item|
        items << item[0]
      end
    end
    items.sort.uniq
  end

  def total_inventory
    items = Hash.new(0)
    @vendors.each do |vendor|
      vendor.inventory.each do |item|
        items[item[0]] += item[1]
      end
    end
    items
  end

end
