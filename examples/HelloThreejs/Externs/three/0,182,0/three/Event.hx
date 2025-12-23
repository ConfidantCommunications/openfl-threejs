package three;

/**
	The minimal expected contract of a fired Event that was dispatched by a {@link EventDispatcher<>}.
**/
typedef Event<TEventType, TTarget> = {
	final type : TEventType;
	final target : TTarget;
};