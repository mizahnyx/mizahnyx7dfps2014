-module(mizahnyx7dfps2014_main_controller, [Req]).
-compile(export_all).
-default_action(index).

index('GET', []) ->
    {ok, []}.
