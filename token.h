typedef enum {
    T_EOF=0,
    T_KEYWORD,
    T_PREPROCESS,
    T_IDENT,
    T_NUMERICCONST,
    T_STRING,
    T_CHAR,
    T_ERROR,
    T_EQEQ,
    T_PLUSPLUS,
    T_MINUSMINUS,
    T_GEQ,
    T_LEQ,
    T_ECLAIMEQ,
    T_AMPAMP,
    T_VERTVERT,
    T_RANGRANG,
    T_LANGLANG,
    T_PLUSEQ,
    T_MINUSEQ,
    T_STAREQ,
    T_FORSLASHEQ,
    T_MODEQ,
    T_RANGRANGEQ,
    T_LANGLANGEQ,
    T_AMPEREQ,
    T_CARETEQ,
    T_BAREQ,
    T_QUESCOLON,
    T_ARROW,
    T_LANGBRACK,
    T_RANGBRACK,
    T_LBRACE,
    T_RBRACE,
    T_LBRACK,
    T_RBRACK,
    T_LPAREN,
    T_RPAREN,
    T_VERTBAR,
    T_BACKSLASH,
    T_PLUS,
    T_MINUS,
    T_STAR,
    T_FORSLASH,
    T_EQ,
    T_MOD,
    T_PERIOD,
    T_TILDE,
    T_EXCLAIM,
    T_QUESTION,
    T_DOLLAR,
    T_CARET,
    T_SEMI,
    T_COLON,
    T_COMMA,
    
}token_t;