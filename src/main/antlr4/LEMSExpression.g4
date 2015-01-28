grammar LEMSExpression;
import CommonLexerRules;

base:   expr;

expr:   '(' expr ')'                        # Parenthesized
    |   BuiltinFuncs '(' expr? ')'          # FunctionCall
    |   expr op=POW expr                    # Pow
    |   '-' expr                            # Negate
    |   expr op=(MUL | DIV) expr            # MulDiv
    |   expr op=(ADD | SUB) expr            # AddSub
    |   expr op=(LEQ | LT | GEQ | GT) expr  # Comparison
    |   expr op=AND expr                    # LogicAnd
    |   expr op=OR expr                     # LogicOr
    |   FLOAT                               # FloatLiteral
    |   ID                                  # Identifier
    ;


BuiltinFuncs:   'sin'   
              | 'cos'  
              | 'tan' 
              | 'sqrt'
              | 'sinh'
              | 'cosh'
              | 'tanh'
              | 'exp'
              | 'log' 
              | 'ln' 
              | 'random'
              | 'ceil'
              | 'floor'
              | 'abs'
              ;

