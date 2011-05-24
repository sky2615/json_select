# Autogenerated from a Treetop grammar. Edits may be lost.


module JSONSelect::Selector
  include Treetop::Runtime

  def root
    @root ||= :selectors_group
  end

  module SelectorsGroup0
    def c
      elements[3]
    end
  end

  module SelectorsGroup1
    def a
      elements[1]
    end

    def b
      elements[2]
    end

  end

  def _nt_selectors_group
    start_index = index
    if node_cache[:selectors_group].has_key?(index)
      cached = node_cache[:selectors_group][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    s1, i1 = [], index
    loop do
      r2 = _nt_ws
      if r2
        s1 << r2
      else
        break
      end
    end
    r1 = instantiate_node(SyntaxNode,input, i1...index, s1)
    s0 << r1
    if r1
      r3 = _nt_selector
      s0 << r3
      if r3
        s4, i4 = [], index
        loop do
          i5, s5 = index, []
          s6, i6 = [], index
          loop do
            r7 = _nt_ws
            if r7
              s6 << r7
            else
              break
            end
          end
          r6 = instantiate_node(SyntaxNode,input, i6...index, s6)
          s5 << r6
          if r6
            if has_terminal?(',', false, index)
              r8 = instantiate_node(SyntaxNode,input, index...(index + 1))
              @index += 1
            else
              terminal_parse_failure(',')
              r8 = nil
            end
            s5 << r8
            if r8
              s9, i9 = [], index
              loop do
                r10 = _nt_ws
                if r10
                  s9 << r10
                else
                  break
                end
              end
              r9 = instantiate_node(SyntaxNode,input, i9...index, s9)
              s5 << r9
              if r9
                r11 = _nt_selector
                s5 << r11
              end
            end
          end
          if s5.last
            r5 = instantiate_node(SyntaxNode,input, i5...index, s5)
            r5.extend(SelectorsGroup0)
          else
            @index = i5
            r5 = nil
          end
          if r5
            s4 << r5
          else
            break
          end
        end
        r4 = instantiate_node(SyntaxNode,input, i4...index, s4)
        s0 << r4
        if r4
          s12, i12 = [], index
          loop do
            r13 = _nt_ws
            if r13
              s12 << r13
            else
              break
            end
          end
          r12 = instantiate_node(SyntaxNode,input, i12...index, s12)
          s0 << r12
        end
      end
    end
    if s0.last
      r0 = instantiate_node(JSONSelect::Ast::SelectorGroup,input, i0...index, s0)
      r0.extend(SelectorsGroup1)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:selectors_group][start_index] = r0

    r0
  end

  module Selector0
    def c
      elements[0]
    end

    def d
      elements[1]
    end
  end

  module Selector1
    def a
      elements[0]
    end

    def b
      elements[1]
    end
  end

  def _nt_selector
    start_index = index
    if node_cache[:selector].has_key?(index)
      cached = node_cache[:selector][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    r1 = _nt_simple_selector_sequence
    s0 << r1
    if r1
      s2, i2 = [], index
      loop do
        i3, s3 = index, []
        r4 = _nt_combinator
        s3 << r4
        if r4
          r5 = _nt_simple_selector_sequence
          s3 << r5
        end
        if s3.last
          r3 = instantiate_node(SyntaxNode,input, i3...index, s3)
          r3.extend(Selector0)
        else
          @index = i3
          r3 = nil
        end
        if r3
          s2 << r3
        else
          break
        end
      end
      r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
      s0 << r2
    end
    if s0.last
      r0 = instantiate_node(JSONSelect::Ast::CombinationSelector,input, i0...index, s0)
      r0.extend(Selector1)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:selector][start_index] = r0

    r0
  end

  module Combinator0
  end

  def _nt_combinator
    start_index = index
    if node_cache[:combinator].has_key?(index)
      cached = node_cache[:combinator][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    i1, s1 = index, []
    s2, i2 = [], index
    loop do
      r3 = _nt_ws
      if r3
        s2 << r3
      else
        break
      end
    end
    r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
    s1 << r2
    if r2
      if has_terminal?('>', false, index)
        r4 = instantiate_node(SyntaxNode,input, index...(index + 1))
        @index += 1
      else
        terminal_parse_failure('>')
        r4 = nil
      end
      s1 << r4
      if r4
        s5, i5 = [], index
        loop do
          r6 = _nt_ws
          if r6
            s5 << r6
          else
            break
          end
        end
        r5 = instantiate_node(SyntaxNode,input, i5...index, s5)
        s1 << r5
      end
    end
    if s1.last
      r1 = instantiate_node(SyntaxNode,input, i1...index, s1)
      r1.extend(Combinator0)
    else
      @index = i1
      r1 = nil
    end
    if r1
      r0 = r1
    else
      s7, i7 = [], index
      loop do
        r8 = _nt_ws
        if r8
          s7 << r8
        else
          break
        end
      end
      if s7.empty?
        @index = i7
        r7 = nil
      else
        r7 = instantiate_node(SyntaxNode,input, i7...index, s7)
      end
      if r7
        r0 = r7
      else
        @index = i0
        r0 = nil
      end
    end

    node_cache[:combinator][start_index] = r0

    r0
  end

  module SimpleSelectorSequence0
    def a
      elements[0]
    end

    def b
      elements[1]
    end
  end

  def _nt_simple_selector_sequence
    start_index = index
    if node_cache[:simple_selector_sequence].has_key?(index)
      cached = node_cache[:simple_selector_sequence][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    i1, s1 = index, []
    i2 = index
    r3 = _nt_type_selector
    if r3
      r2 = r3
    else
      r4 = _nt_universal
      if r4
        r2 = r4
      else
        @index = i2
        r2 = nil
      end
    end
    s1 << r2
    if r2
      s5, i5 = [], index
      loop do
        i6 = index
        r7 = _nt_hash
        if r7
          r6 = r7
        else
          r8 = _nt_pseudo
          if r8
            r6 = r8
          else
            @index = i6
            r6 = nil
          end
        end
        if r6
          s5 << r6
        else
          break
        end
      end
      r5 = instantiate_node(SyntaxNode,input, i5...index, s5)
      s1 << r5
    end
    if s1.last
      r1 = instantiate_node(JSONSelect::Ast::SimpleSelector,input, i1...index, s1)
      r1.extend(SimpleSelectorSequence0)
    else
      @index = i1
      r1 = nil
    end
    if r1
      r0 = r1
    else
      s9, i9 = [], index
      loop do
        i10 = index
        r11 = _nt_hash
        if r11
          r10 = r11
        else
          r12 = _nt_pseudo
          if r12
            r10 = r12
          else
            @index = i10
            r10 = nil
          end
        end
        if r10
          s9 << r10
        else
          break
        end
      end
      if s9.empty?
        @index = i9
        r9 = nil
      else
        r9 = instantiate_node(JSONSelect::Ast::SimpleSelector,input, i9...index, s9)
      end
      if r9
        r0 = r9
      else
        @index = i0
        r0 = nil
      end
    end

    node_cache[:simple_selector_sequence][start_index] = r0

    r0
  end

  def _nt_type_selector
    start_index = index
    if node_cache[:type_selector].has_key?(index)
      cached = node_cache[:type_selector][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    if has_terminal?('object', false, index)
      r1 = instantiate_node(SyntaxNode,input, index...(index + 6))
      @index += 6
    else
      terminal_parse_failure('object')
      r1 = nil
    end
    if r1
      r0 = r1
      r0.extend(JSONSelect::Ast::TypeSelector)
    else
      if has_terminal?('array', false, index)
        r2 = instantiate_node(SyntaxNode,input, index...(index + 5))
        @index += 5
      else
        terminal_parse_failure('array')
        r2 = nil
      end
      if r2
        r0 = r2
        r0.extend(JSONSelect::Ast::TypeSelector)
      else
        if has_terminal?('number', false, index)
          r3 = instantiate_node(SyntaxNode,input, index...(index + 6))
          @index += 6
        else
          terminal_parse_failure('number')
          r3 = nil
        end
        if r3
          r0 = r3
          r0.extend(JSONSelect::Ast::TypeSelector)
        else
          if has_terminal?('string', false, index)
            r4 = instantiate_node(SyntaxNode,input, index...(index + 6))
            @index += 6
          else
            terminal_parse_failure('string')
            r4 = nil
          end
          if r4
            r0 = r4
            r0.extend(JSONSelect::Ast::TypeSelector)
          else
            if has_terminal?('boolean', false, index)
              r5 = instantiate_node(SyntaxNode,input, index...(index + 7))
              @index += 7
            else
              terminal_parse_failure('boolean')
              r5 = nil
            end
            if r5
              r0 = r5
              r0.extend(JSONSelect::Ast::TypeSelector)
            else
              if has_terminal?('null', false, index)
                r6 = instantiate_node(SyntaxNode,input, index...(index + 4))
                @index += 4
              else
                terminal_parse_failure('null')
                r6 = nil
              end
              if r6
                r0 = r6
                r0.extend(JSONSelect::Ast::TypeSelector)
              else
                @index = i0
                r0 = nil
              end
            end
          end
        end
      end
    end

    node_cache[:type_selector][start_index] = r0

    r0
  end

  def _nt_universal
    start_index = index
    if node_cache[:universal].has_key?(index)
      cached = node_cache[:universal][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    if has_terminal?('*', false, index)
      r0 = instantiate_node(JSONSelect::Ast::UniversalSelector,input, index...(index + 1))
      @index += 1
    else
      terminal_parse_failure('*')
      r0 = nil
    end

    node_cache[:universal][start_index] = r0

    r0
  end

  module Hash0
    def name
      elements[1]
    end
  end

  module Hash1
    def json_string
      elements[1]
    end
  end

  def _nt_hash
    start_index = index
    if node_cache[:hash].has_key?(index)
      cached = node_cache[:hash][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    i1, s1 = index, []
    if has_terminal?('.', false, index)
      r2 = instantiate_node(SyntaxNode,input, index...(index + 1))
      @index += 1
    else
      terminal_parse_failure('.')
      r2 = nil
    end
    s1 << r2
    if r2
      r3 = _nt_name
      s1 << r3
    end
    if s1.last
      r1 = instantiate_node(SyntaxNode,input, i1...index, s1)
      r1.extend(Hash0)
    else
      @index = i1
      r1 = nil
    end
    if r1
      r0 = r1
      r0.extend(JSONSelect::Ast::HashSelector)
    else
      i4, s4 = index, []
      if has_terminal?('.', false, index)
        r5 = instantiate_node(SyntaxNode,input, index...(index + 1))
        @index += 1
      else
        terminal_parse_failure('.')
        r5 = nil
      end
      s4 << r5
      if r5
        r6 = _nt_json_string
        s4 << r6
      end
      if s4.last
        r4 = instantiate_node(SyntaxNode,input, i4...index, s4)
        r4.extend(Hash1)
      else
        @index = i4
        r4 = nil
      end
      if r4
        r0 = r4
        r0.extend(JSONSelect::Ast::HashSelector)
      else
        @index = i0
        r0 = nil
      end
    end

    node_cache[:hash][start_index] = r0

    r0
  end

  module Pseudo0
    def a
      elements[1]
    end
  end

  module Pseudo1
    def a
      elements[1]
    end

    def e
      elements[3]
    end

  end

  def _nt_pseudo
    start_index = index
    if node_cache[:pseudo].has_key?(index)
      cached = node_cache[:pseudo][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    i1, s1 = index, []
    if has_terminal?(':', false, index)
      r2 = instantiate_node(SyntaxNode,input, index...(index + 1))
      @index += 1
    else
      terminal_parse_failure(':')
      r2 = nil
    end
    s1 << r2
    if r2
      r3 = _nt_pseudo_class_name
      s1 << r3
    end
    if s1.last
      r1 = instantiate_node(JSONSelect::Ast::PseudoSelector,input, i1...index, s1)
      r1.extend(Pseudo0)
    else
      @index = i1
      r1 = nil
    end
    if r1
      r0 = r1
    else
      i4, s4 = index, []
      if has_terminal?(':', false, index)
        r5 = instantiate_node(SyntaxNode,input, index...(index + 1))
        @index += 1
      else
        terminal_parse_failure(':')
        r5 = nil
      end
      s4 << r5
      if r5
        r6 = _nt_pseudo_function_name
        s4 << r6
        if r6
          if has_terminal?('(', false, index)
            r7 = instantiate_node(SyntaxNode,input, index...(index + 1))
            @index += 1
          else
            terminal_parse_failure('(')
            r7 = nil
          end
          s4 << r7
          if r7
            r8 = _nt_expression
            s4 << r8
            if r8
              if has_terminal?(')', false, index)
                r9 = instantiate_node(SyntaxNode,input, index...(index + 1))
                @index += 1
              else
                terminal_parse_failure(')')
                r9 = nil
              end
              s4 << r9
            end
          end
        end
      end
      if s4.last
        r4 = instantiate_node(JSONSelect::Ast::PseudoSelector,input, i4...index, s4)
        r4.extend(Pseudo1)
      else
        @index = i4
        r4 = nil
      end
      if r4
        r0 = r4
      else
        @index = i0
        r0 = nil
      end
    end

    node_cache[:pseudo][start_index] = r0

    r0
  end

  def _nt_pseudo_class_name
    start_index = index
    if node_cache[:pseudo_class_name].has_key?(index)
      cached = node_cache[:pseudo_class_name][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    if has_terminal?('root', false, index)
      r1 = instantiate_node(SyntaxNode,input, index...(index + 4))
      @index += 4
    else
      terminal_parse_failure('root')
      r1 = nil
    end
    if r1
      r0 = r1
    else
      if has_terminal?('first-child', false, index)
        r2 = instantiate_node(SyntaxNode,input, index...(index + 11))
        @index += 11
      else
        terminal_parse_failure('first-child')
        r2 = nil
      end
      if r2
        r0 = r2
      else
        if has_terminal?('last-child', false, index)
          r3 = instantiate_node(SyntaxNode,input, index...(index + 10))
          @index += 10
        else
          terminal_parse_failure('last-child')
          r3 = nil
        end
        if r3
          r0 = r3
        else
          if has_terminal?('only-child', false, index)
            r4 = instantiate_node(SyntaxNode,input, index...(index + 10))
            @index += 10
          else
            terminal_parse_failure('only-child')
            r4 = nil
          end
          if r4
            r0 = r4
          else
            @index = i0
            r0 = nil
          end
        end
      end
    end

    node_cache[:pseudo_class_name][start_index] = r0

    r0
  end

  def _nt_pseudo_function_name
    start_index = index
    if node_cache[:pseudo_function_name].has_key?(index)
      cached = node_cache[:pseudo_function_name][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    if has_terminal?('nth-child', false, index)
      r1 = instantiate_node(SyntaxNode,input, index...(index + 9))
      @index += 9
    else
      terminal_parse_failure('nth-child')
      r1 = nil
    end
    if r1
      r0 = r1
    else
      if has_terminal?('nth-last-child', false, index)
        r2 = instantiate_node(SyntaxNode,input, index...(index + 14))
        @index += 14
      else
        terminal_parse_failure('nth-last-child')
        r2 = nil
      end
      if r2
        r0 = r2
      else
        @index = i0
        r0 = nil
      end
    end

    node_cache[:pseudo_function_name][start_index] = r0

    r0
  end

  module Expression0
  end

  module Expression1
    def a
      elements[0]
    end

    def b
      elements[1]
    end

    def c
      elements[3]
    end
  end

  module Expression2
  end

  def _nt_expression
    start_index = index
    if node_cache[:expression].has_key?(index)
      cached = node_cache[:expression][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    if has_terminal?('odd', false, index)
      r1 = instantiate_node(JSONSelect::Ast::OddExpr,input, index...(index + 3))
      @index += 3
    else
      terminal_parse_failure('odd')
      r1 = nil
    end
    if r1
      r0 = r1
    else
      if has_terminal?('even', false, index)
        r2 = instantiate_node(JSONSelect::Ast::EvenExpr,input, index...(index + 4))
        @index += 4
      else
        terminal_parse_failure('even')
        r2 = nil
      end
      if r2
        r0 = r2
      else
        i3, s3 = index, []
        if has_terminal?('\G[+-]', true, index)
          r5 = true
          @index += 1
        else
          r5 = nil
        end
        if r5
          r4 = r5
        else
          r4 = instantiate_node(SyntaxNode,input, index...index)
        end
        s3 << r4
        if r4
          s6, i6 = [], index
          loop do
            if has_terminal?('\G[0-9]', true, index)
              r7 = true
              @index += 1
            else
              r7 = nil
            end
            if r7
              s6 << r7
            else
              break
            end
          end
          r6 = instantiate_node(SyntaxNode,input, i6...index, s6)
          s3 << r6
          if r6
            if has_terminal?('n', false, index)
              r8 = instantiate_node(SyntaxNode,input, index...(index + 1))
              @index += 1
            else
              terminal_parse_failure('n')
              r8 = nil
            end
            s3 << r8
            if r8
              i10, s10 = index, []
              if has_terminal?('\G[+-]', true, index)
                r11 = true
                @index += 1
              else
                r11 = nil
              end
              s10 << r11
              if r11
                if has_terminal?('\G[0-9]', true, index)
                  r12 = true
                  @index += 1
                else
                  r12 = nil
                end
                s10 << r12
              end
              if s10.last
                r10 = instantiate_node(SyntaxNode,input, i10...index, s10)
                r10.extend(Expression0)
              else
                @index = i10
                r10 = nil
              end
              if r10
                r9 = r10
              else
                r9 = instantiate_node(SyntaxNode,input, index...index)
              end
              s3 << r9
            end
          end
        end
        if s3.last
          r3 = instantiate_node(JSONSelect::Ast::ComplexExpr,input, i3...index, s3)
          r3.extend(Expression1)
        else
          @index = i3
          r3 = nil
        end
        if r3
          r0 = r3
        else
          i13, s13 = index, []
          if has_terminal?('\G[+-]', true, index)
            r15 = true
            @index += 1
          else
            r15 = nil
          end
          if r15
            r14 = r15
          else
            r14 = instantiate_node(SyntaxNode,input, index...index)
          end
          s13 << r14
          if r14
            s16, i16 = [], index
            loop do
              if has_terminal?('\G[0-9]', true, index)
                r17 = true
                @index += 1
              else
                r17 = nil
              end
              if r17
                s16 << r17
              else
                break
              end
            end
            if s16.empty?
              @index = i16
              r16 = nil
            else
              r16 = instantiate_node(SyntaxNode,input, i16...index, s16)
            end
            s13 << r16
          end
          if s13.last
            r13 = instantiate_node(JSONSelect::Ast::SimpleExpr,input, i13...index, s13)
            r13.extend(Expression2)
          else
            @index = i13
            r13 = nil
          end
          if r13
            r0 = r13
          else
            @index = i0
            r0 = nil
          end
        end
      end
    end

    node_cache[:expression][start_index] = r0

    r0
  end

  module JsonString0
  end

  def _nt_json_string
    start_index = index
    if node_cache[:json_string].has_key?(index)
      cached = node_cache[:json_string][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if has_terminal?('\G["]', true, index)
      r1 = true
      @index += 1
    else
      r1 = nil
    end
    s0 << r1
    if r1
      s2, i2 = [], index
      loop do
        r3 = _nt_json_chars
        if r3
          s2 << r3
        else
          break
        end
      end
      r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
      s0 << r2
      if r2
        if has_terminal?('\G["]', true, index)
          r4 = true
          @index += 1
        else
          r4 = nil
        end
        s0 << r4
      end
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(JsonString0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:json_string][start_index] = r0

    r0
  end

  module JsonChars0
  end

  def _nt_json_chars
    start_index = index
    if node_cache[:json_chars].has_key?(index)
      cached = node_cache[:json_chars][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    if has_terminal?('\G[^\\\\"]', true, index)
      r1 = true
      @index += 1
    else
      r1 = nil
    end
    if r1
      r0 = r1
    else
      i2, s2 = index, []
      if has_terminal?('\G[\\\\]', true, index)
        r3 = true
        @index += 1
      else
        r3 = nil
      end
      s2 << r3
      if r3
        if has_terminal?('\G["\\\\/bfnrt]', true, index)
          r4 = true
          @index += 1
        else
          r4 = nil
        end
        s2 << r4
      end
      if s2.last
        r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
        r2.extend(JsonChars0)
      else
        @index = i2
        r2 = nil
      end
      if r2
        r0 = r2
      else
        @index = i0
        r0 = nil
      end
    end

    node_cache[:json_chars][start_index] = r0

    r0
  end

  module Name0
    def nmstart
      elements[0]
    end

  end

  def _nt_name
    start_index = index
    if node_cache[:name].has_key?(index)
      cached = node_cache[:name][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    r1 = _nt_nmstart
    s0 << r1
    if r1
      s2, i2 = [], index
      loop do
        r3 = _nt_nmchar
        if r3
          s2 << r3
        else
          break
        end
      end
      r2 = instantiate_node(SyntaxNode,input, i2...index, s2)
      s0 << r2
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(Name0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:name][start_index] = r0

    r0
  end

  def _nt_nmstart
    start_index = index
    if node_cache[:nmstart].has_key?(index)
      cached = node_cache[:nmstart][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    r1 = _nt_escape
    if r1
      r0 = r1
    else
      if has_terminal?('\G[_a-zA-Z]', true, index)
        r2 = true
        @index += 1
      else
        r2 = nil
      end
      if r2
        r0 = r2
      else
        r3 = _nt_nonascii
        if r3
          r0 = r3
        else
          @index = i0
          r0 = nil
        end
      end
    end

    node_cache[:nmstart][start_index] = r0

    r0
  end

  def _nt_nmchar
    start_index = index
    if node_cache[:nmchar].has_key?(index)
      cached = node_cache[:nmchar][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0 = index
    if has_terminal?('\G[_a-zA-Z0-9-]', true, index)
      r1 = true
      @index += 1
    else
      r1 = nil
    end
    if r1
      r0 = r1
    else
      r2 = _nt_escape
      if r2
        r0 = r2
      else
        r3 = _nt_nonascii
        if r3
          r0 = r3
        else
          @index = i0
          r0 = nil
        end
      end
    end

    node_cache[:nmchar][start_index] = r0

    r0
  end

  module Escape0
  end

  def _nt_escape
    start_index = index
    if node_cache[:escape].has_key?(index)
      cached = node_cache[:escape][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    i0, s0 = index, []
    if has_terminal?('\G[\\\\]', true, index)
      r1 = true
      @index += 1
    else
      r1 = nil
    end
    s0 << r1
    if r1
      if has_terminal?('\G[^\\r\\n\\f0-9a-fA-F]', true, index)
        r2 = true
        @index += 1
      else
        r2 = nil
      end
      s0 << r2
    end
    if s0.last
      r0 = instantiate_node(SyntaxNode,input, i0...index, s0)
      r0.extend(Escape0)
    else
      @index = i0
      r0 = nil
    end

    node_cache[:escape][start_index] = r0

    r0
  end

  def _nt_nonascii
    start_index = index
    if node_cache[:nonascii].has_key?(index)
      cached = node_cache[:nonascii][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    if has_terminal?('\G[^\\0-0177]', true, index)
      r0 = instantiate_node(SyntaxNode,input, index...(index + 1))
      @index += 1
    else
      r0 = nil
    end

    node_cache[:nonascii][start_index] = r0

    r0
  end

  def _nt_ws
    start_index = index
    if node_cache[:ws].has_key?(index)
      cached = node_cache[:ws][index]
      if cached
        cached = SyntaxNode.new(input, index...(index + 1)) if cached == true
        @index = cached.interval.end
      end
      return cached
    end

    if has_terminal?('\G[ \\t\\r\\n]', true, index)
      r0 = instantiate_node(SyntaxNode,input, index...(index + 1))
      @index += 1
    else
      r0 = nil
    end

    node_cache[:ws][start_index] = r0

    r0
  end

end

class JSONSelect::SelectorParser < Treetop::Runtime::CompiledParser
  include JSONSelect::Selector
end

