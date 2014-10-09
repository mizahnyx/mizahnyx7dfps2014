-module(user_account, [Id, UserName, DisplayName, PasswordHash]).
-compile(export_all).

secret_string() ->
    "Q4y#d$$}x3[xnG!qEf_*IY,7YlCy(zGR".

session_identifier() ->
    {ok, Salt} = bcrypt:gen_salt(),
    {ok, SessionId} = mochihex:to_hex(
                        bcrypt:hashpw(secret_string() ++ Id, Salt)),
    SessionId.
    
