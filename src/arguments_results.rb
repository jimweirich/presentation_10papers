class View
  def draw_rectangle(top_left, bottom_right, color) end
  def fill_rectangle(top_left, bottom_right, color) end
  def draw_oval(top_left, bottom_right, color) end
end

class Graphic
  def initialize(shape, top_left, bottom_right, color) end
end

class View
  def draw_rectangle(graphic) end
  def fill_rectangle(graphic) end
  def draw_oval(graphic) end
end


font = Font.new('Times')
offset = font.height

view.draw_string("Hello", origin, font)    
view.draw_string("World", origin+offset, font)
view.draw_string("!!!!", origin + 2*offset, font)


font = Font.new('Times')
pen = Pen.new(view, origin, font)

pen.draw_string("Hello")
pen.draw_string("World")
pen.draw_string("!!!!")

# --------------------------------------------------------------------

m = MetricCalculator.new(an_object)

m.compute_size_of_interface
m.compute_number_of_inherited_methods
m.compute_number_of_ancestors


metric_report = MetricCalculator.new(an_object).compute_metrics

metric_report.size_of_interface
metric_report.number_of_inherited_methods
metric_report.number_of_ancestors
