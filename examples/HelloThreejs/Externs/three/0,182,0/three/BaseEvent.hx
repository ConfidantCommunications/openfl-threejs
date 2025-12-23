package three;

/**
	The minimal basic Event that can be dispatched by a {@link EventDispatcher<>}.
**/
typedef BaseEvent<TEventType> = {
	final type : TEventType;
};