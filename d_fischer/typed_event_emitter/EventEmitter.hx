package d_fischer.typed_event_emitter;

@:jsRequire("@d-fischer/typed-event-emitter", "EventEmitter") extern class EventEmitter {
	function new();
	private var _eventListeners : Dynamic;
	function on<Args>(event:EventBinder<Args>, listener:EventHandler<Args>):Listener;
	function addListener<Args>(event:EventBinder<Args>, listener:EventHandler<Args>):Listener;
	@:overload(function(id:Listener):Void { })
	@:overload(function(event:haxe.Constraints.Function, ?listener:haxe.Constraints.Function):Void { })
	function removeListener():Void;
	function registerEvent<T>():(handler:T) -> Listener;
	/**
		Emit event. Calls all bound listeners with args.
	**/
	private function emit<Args>(event:EventBinder<Args>, args:haxe.extern.Rest<Any>):Void;
	static var prototype : EventEmitter;
}