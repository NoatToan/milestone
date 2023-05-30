Write blocs by entities. Not follow the screen.

On screen. create a bloc(in MVP we can understand that this bloc is presenter) injects this entity bloc.

Example:
Home screen includes user data and feed data
=> Create HomeBlocPresenter, inject userBloc and FeedBloc. 
Then HomeBloc defines the functions which interact to userBloc and FeedBloc