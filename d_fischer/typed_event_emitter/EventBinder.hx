package d_fischer.typed_event_emitter;

typedef EventBinder<Args> = (event:EventHandler<Args>) -> Listener;