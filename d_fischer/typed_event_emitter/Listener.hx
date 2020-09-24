package d_fischer.typed_event_emitter;

@:jsRequire("@d-fischer/typed-event-emitter", "Listener") extern class Listener {
	function new(owner:EventEmitter, event:haxe.Constraints.Function, listener:haxe.Constraints.Function);
	var owner : EventEmitter;
	var event : haxe.Constraints.Function;
	var listener : haxe.Constraints.Function;
	function unbind():Void;
	static var prototype : Listener;
}