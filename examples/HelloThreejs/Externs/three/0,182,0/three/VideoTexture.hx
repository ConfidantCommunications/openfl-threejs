package three;

/**
	Creates a texture for use with a video.
**/
@:native("THREE.VideoTexture") extern class VideoTexture<TVideo> extends Texture<TVideo> {
	/**
		Create a new instance of {@link VideoTexture}
	**/
	function new(video:TVideo, ?mapping:Mapping, ?wrapS:Wrapping, ?wrapT:Wrapping, ?magFilter:MagnificationTextureFilter, ?minFilter:MinificationTextureFilter, ?format:PixelFormat, ?type:TextureDataType, ?anisotropy:Float);
	/**
		Read-only flag to check if a given object is of type {@link VideoTexture}.
	**/
	final isVideoTexture : Bool;
	/**
		This is called automatically and sets {@link needsUpdate | .needsUpdate } to `true` every time a new frame is available.
	**/
	function update():Void;
	/**
		Make copy of the texture. Note this is not a "deep copy", the image is shared. Cloning the texture automatically
		marks it for texture upload.
	**/
	function clone():VideoTexture<TVideo>;
	function copy(source:Texture<TVideo>):VideoTexture<TVideo>;
	/**
		Adds a listener to an event type.
	**/
	function addEventListener<T>(type:T, listener:EventListener<Dynamic, T, VideoTexture<TVideo>>):Void;
	/**
		Checks if listener is added to an event type.
	**/
	function hasEventListener<T>(type:T, listener:EventListener<Dynamic, T, VideoTexture<TVideo>>):Bool;
	/**
		Removes a listener from an event type.
	**/
	function removeEventListener<T>(type:T, listener:EventListener<Dynamic, T, VideoTexture<TVideo>>):Void;
	static var prototype : VideoTexture<Dynamic>;
}