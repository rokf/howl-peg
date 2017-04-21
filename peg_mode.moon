
class PEGMode
  new: =>
    @lexer = bundle_load('peg_lexer')
    @completers = { 'in_buffer' }

  auto_pairs: {
    '(': ')'
    '[': ']'
    '{': '}'
    '"': '"'
    "'": "'"
  }
