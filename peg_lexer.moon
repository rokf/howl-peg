
howl.util.lpeg_lexer ->
  c = capture

  ident = (alpha + '_')^1 * (alpha + digit + '_')^0

  operator = c 'operator', P'<-' + S'!&*+?/'
  literal = c 'string', span("'","'","\\")
  cclass = c 'special', span('[',']','\\')

  rule = c 'constant', ident

  any {
    literal,
    operator,
    cclass,
    rule * #(P' '^0 * P'<-')
  }
