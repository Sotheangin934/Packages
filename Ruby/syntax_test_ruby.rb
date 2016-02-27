# SYNTAX TEST "Packages/Ruby/Ruby.sublime-syntax"
puts 'test'

puts <<~EOF
  Indented string!
EOF
# ^ string.unquoted.heredoc

class MyClass
# ^ meta.class.ruby keyword.control.class.ruby
#     ^ meta.class.ruby entity.name.type.class.ruby

  prepend Module.new
# ^ keyword.other.special-method.ruby
#         ^ support.class.ruby
#                 ^ keyword.other.special-method.ruby

  FIELDS = %i[a b c]
# ^ meta.constant.ruby entity.name.type.constant.ruby
#        ^ keyword.operator.assignment.ruby
#          ^^^ punctuation.definition.string.begin.ruby
#             ^^^^^ string.quoted.other.literal.lower.ruby

  %I[#{ENV['APP_NAME']} apple orange]
# ^^^ punctuation.definition.string.begin.ruby
#      ^ meta.environment-variable.ruby variable.other.constant.ruby
#    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ string.quoted.other.literal.upper.ruby

  def name
# ^ keyword.control.def.ruby
#     ^^^^ meta.function.method.without-arguments.ruby entity.name.function.ruby
    [self.class.name, @name].map do |*args|
    # ^ variable.language.ruby
    #                 ^ variable.other.readwrite.instance.ruby punctuation.definition.variable.ruby
    #                  ^^^^ variable.other.readwrite.instance.ruby
    #                                ^ keyword.operator.arithmetic.ruby
    #                                  ^ meta.variable.block.ruby
    end
  end

  def my_method
    str = "number %d" %  11
                # ^^ string.quoted.double.ruby constant.other.placeholder.ruby
    str = 'number %d' % 11
                # ^^ string.quoted.single.ruby constant.other.placeholder.ruby
  end

end

# <- source.ruby
